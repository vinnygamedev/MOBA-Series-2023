using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class Movement : MonoBehaviour
{

    public NavMeshAgent agent;
    public float rotateSpeedMovement = 0.05f;
    private float rotateVelocity;

    public Animator anim;
    float motionSmoothTime = 0.1f;

    void Start()
    {
        agent = gameObject.GetComponent<NavMeshAgent>();
    }


    void Update()
    {
        Animation();
        Move();
    }

    public void Animation()
    {
        float speed = agent.velocity.magnitude / agent.speed;
        anim.SetFloat("Speed", speed, motionSmoothTime, Time.deltaTime);
    }

    public void Move()
    {
        if(Input.GetMouseButtonDown(1))
        {
            RaycastHit hit;

            if(Physics.Raycast(Camera.main.ScreenPointToRay(Input.mousePosition), out hit, Mathf.Infinity))
            {
                if(hit.collider.tag == "Ground")
                {
                    //MOVEMENT
                    agent.SetDestination(hit.point);
                    agent.stoppingDistance = 0;

                    //ROTATION
                    Quaternion rotationToLookAt = Quaternion.LookRotation(hit.point - transform.position);
                    float rotationY = Mathf.SmoothDampAngle(transform.eulerAngles.y, rotationToLookAt.eulerAngles.y,
                        ref rotateVelocity, rotateSpeedMovement * (Time.deltaTime * 5));

                    transform.eulerAngles = new Vector3(0, rotationY, 0);
                }
            }
        }
    }
}
