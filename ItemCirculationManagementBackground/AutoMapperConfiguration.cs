using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AutoMapper;
using ItemCirculation.Data.Models;
using ItemCirculationManagementBackground.ViewModels;

namespace ItemCirculationManagementBackground
{
    public class AutoMapperConfiguration
    {
        public static void Configure()
        {
            Mapper.Initialize(cfg =>
            {
                cfg.CreateMap<CirculationRecordView, CirculationRecord>();
            });
        }
    }
}
