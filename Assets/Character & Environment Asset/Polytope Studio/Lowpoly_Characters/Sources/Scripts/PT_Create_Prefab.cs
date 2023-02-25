using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Linq;

namespace Polytope
{
    public class PT_Create_Prefab : MonoBehaviour
    {
        public delegate void PreviewCallback();

        public static class TypeOfMesh
        {
            public static readonly string hair = "hair";
            public static readonly string head = "head";
            public static readonly string beard = "beard";
            public static readonly string helmet = "helmet";
            public static readonly string body = "body";
            public static readonly string boots = "boots";
            public static readonly string cape = "cape";
            public static readonly string gauntlets = "gauntlets";
            public static readonly string legs = "legs";
            public static readonly string upper = "upper";
            public static readonly string lower = "lower";

        }

        [System.Serializable]
        public class ShaderProperties_C
        {
            [ColorUsage(true, true)] [SerializeField] private Color color;
            public Color Color { get { return color; } }
        }

        [System.Serializable]
        public class ShaderProperties_CI
        {
            [ColorUsage(true, true)] [SerializeField] private Color color;
            [SerializeField] private Sprite image;

            public Color Color { get { return color; } }
            public Sprite Image { get { return image; } }
        }

        [System.Serializable]
        public class ShaderProperties_CS
        {
            [ColorUsage(true, true)] [SerializeField] private Color color;
            [Range(0f, 1f)] [SerializeField] private float smoothness;
            public Color Color { get { return color; } }
            public float Smoothness { get { return smoothness; } }
        }

        [System.Serializable]
        public class ShaderProperties_CSM
        {
            [ColorUsage(true, true)] [SerializeField] private Color color;
            [Range(0f, 1f)] [SerializeField] private float smoothness;
            [Range(0f, 1f)] [SerializeField] private float metallic;
            public Color Color { get { return color; } }
            public float Smoothness { get { return smoothness; } }
            public float Metallic { get { return metallic; } }
        }

        [System.Serializable]
        public class ShaderProperties_CSP
        {
            [ColorUsage(true, true)] [SerializeField] private Color color;
            [Range(0f, 1f)] [SerializeField] private float size;
            [Range(0f, 1f)] [SerializeField] private float power;
        }

        [System.Serializable]
        public class MeshType
        {
            public MeshType(string type)
            {
                this.type = type;
            }

            [SerializeField] private string type;
            [SerializeField] private int idx = 0;
            [SerializeField] private List<SkinnedMeshRenderer> list = new List<SkinnedMeshRenderer>();

            public string Type { get { return type; } }
            public int Idx { get { return idx; } set { idx = value; } }
            public List<SkinnedMeshRenderer> List { get { return list; } }
        }

        [System.Serializable]
        private class MaterialType
        {
            [SerializeField] private List<Material> assets;
            [SerializeField] private Material instance;
            [SerializeField] private int index;
        }

        [SerializeField]
        private List<MeshType> meshes = new List<MeshType>
        {
            new MeshType(TypeOfMesh.hair),
            new MeshType(TypeOfMesh.head),
            new MeshType(TypeOfMesh.beard),
            new MeshType(TypeOfMesh.helmet),
            new MeshType(TypeOfMesh.body),
            new MeshType(TypeOfMesh.boots),
            new MeshType(TypeOfMesh.cape),
            new MeshType(TypeOfMesh.gauntlets),
            new MeshType(TypeOfMesh.legs),
            new MeshType(TypeOfMesh.upper),
            new MeshType(TypeOfMesh.lower)
        };
        [SerializeField] private MaterialType material;
        [SerializeField] private bool loaded;
        [SerializeField] private bool tooglehelmet;

        // Shader

        [SerializeField] private ShaderProperties_CS skin;
        [SerializeField] private ShaderProperties_CS eyes;
        [SerializeField] private ShaderProperties_CS hair;
        [SerializeField] private ShaderProperties_CS sclera;
        [SerializeField] private ShaderProperties_CS lips;
        [SerializeField] private ShaderProperties_CS scars;

        [SerializeField] private ShaderProperties_C feathers1;
        [SerializeField] private ShaderProperties_C feathers2;
        [SerializeField] private ShaderProperties_C feathers3;
        [SerializeField] private ShaderProperties_C cloth1;
        [SerializeField] private ShaderProperties_C cloth2;
        [SerializeField] private ShaderProperties_C cloth3;
        [SerializeField] private ShaderProperties_CS leather1;
        [SerializeField] private ShaderProperties_CS leather2;
        [SerializeField] private ShaderProperties_CS leather3;
        [SerializeField] private ShaderProperties_CSM metal1;
        [SerializeField] private ShaderProperties_CSM metal2;
        [SerializeField] private ShaderProperties_CSM metal3;

        [SerializeField] private ShaderProperties_CS gems1;
        [SerializeField] private ShaderProperties_CS gems2;
        [SerializeField] private ShaderProperties_CS gems3;
        [SerializeField] private ShaderProperties_CI coatofarms;

        [SerializeField] private ShaderProperties_CSP light1;
        [SerializeField] private ShaderProperties_CSP light2;
        [SerializeField] private ShaderProperties_CSP light3;

        [Range(0f, 1f)] [SerializeField] private float occlusion;
        [SerializeField] private bool metallicOn;
        [SerializeField] private bool smoothnessOn;
        [SerializeField] private bool gpuinstancing;
        [SerializeField] private bool doubleSidedGI;
        [Range(-1, 5000)] [SerializeField] private int renderQueue;

        [SerializeField] private bool preview;
        [SerializeField] private float time;
        [SerializeField] private bool duplicateMaterial;
    }
}

