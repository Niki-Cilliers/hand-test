using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Rotate_S : MonoBehaviour
{
    public float rotationSpeed = 30f;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        float rotateAmount = Time.deltaTime * rotationSpeed;
        transform.localEulerAngles = transform.localEulerAngles + new Vector3(0, 0, rotateAmount);
    }
}
