{
    part_type_destroy(explosionPart);
    part_type_destroy(explosionPart2);
    part_type_destroy(explosionPart3);
    part_emitter_destroy(explosionSys, explosionEmitter);
    part_emitter_destroy(explosionSys2, explosionEmitter2);
    part_emitter_destroy(explosionSys2, explosionEmitter2);
    part_system_destroy(explosionSys);
    part_system_destroy(explosionSys2);
    part_system_destroy(explosionSys3);
}
