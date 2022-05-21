
Mapping tables show the correspondence between ICD-10 and ICD-11 codes.  Each ICD-10 concept is located within ICD-11 although due 
to critical advances in science and medicine, ICD-10 concepts may no longer have a unique code in ICD-11.  In some instances, these 
critical advances along with the increase in scope of the content, necessitated movement of ICD-10 concepts into new chapters or new 
locations in ICD-11.
The mapping tables are also provided to assist with the transition to ICD-11 based grouping methodologies and to facilitate trending 
of data between ICD-10 and ICD-11.  

Below are the explanations of the columns used in the mapping files:




ICD10Chapter					:Chapter in which this entity is located
ICD10Code						:ICD-10 code for the entity. Note that the groupings do not have a code.
ICD10Title						:Title of the entity
ICD10ClassKind					:Class kind for the ICD-10 entity. It is one of the three (chapter, block, category)
									Chapter is top level classification entities
									Blocks are high level groupings that do not bear a code
									Categories are entities that has a code
Depth							:Depth of within the Class Kind. For example, a category with depthinkind=2 means it is category whose parent is also a category bu grand parent is not 

ICD11Chapter					:Chapter in which this entity is located
Foundation URI					:Unique identifier for the entity that will not change 
Linearization (release) URI		:Unique identifier for this version of the classification. It includes the linearization name such as MMS and minor version identifier such as 2018 in it
ICD11Code						:ICD-11 code for the entity. Note that the groupings do not have a code.
ICD11Title						:Title of the entity
ICD11ClassKind					:Same as ICD10 class kind but for the ICD-11 entity