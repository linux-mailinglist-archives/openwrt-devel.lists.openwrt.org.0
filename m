Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C5EA48C1
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Sep 2019 12:39:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QKlceGfkeAPBdcqsNbBpwVLuFluIFI3QrBOz6n+2wvQ=; b=lhpTPwyLkVRsy3G/q95yARyZY
	OJWMWiX3J7E0MLy+6GOMGIm5wsdWFkydOYGvondsT1QX78gGNGT2KNdE770JgQU1JsseAblM+P5R/
	OefipcyV0ySchXq2dv0wrSiXcAuM3fvrMEojEXzJh4pDXiaH5yxrGWH2l0LwxKjLpsGsn3D7Np0zT
	tlbg13Skq9AoQV+GRWNWmFzxvayg3wKXWey/XhAXM1PmNK94svoFr9of4RdljQO+Vr04GxMz6pSul
	DsiO7FzsjtdeBE8MjqEs+c0X7CMnXBbNcOIFOtr/AZ0iVlG2UfKlEx+2wRVuYcwErdcitbF8ums6z
	fZvhqYrnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4NGQ-0001Hs-2j; Sun, 01 Sep 2019 10:39:18 +0000
Received: from volatilesystems.org ([51.91.248.52])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4NFy-0001G2-4W; Sun, 01 Sep 2019 10:38:51 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id 83709FB073; Sun,  1 Sep 2019 12:38:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1567334322;
 bh=3kYDF5Dh0pt7EUKED3LYoixY8Q7GwQSn8kFIyZq4GaA=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=GDmBvu0qNiS68TU8tHebyO2ugwv2vny2QKaTBdGoUt27DY0kmLVwXFyYLJgDbE/BU
 0JJ5P3EVhGduQEo3tYLsnzT/3rmya35m1IGck1NVUFZlEJNArc6O6a/qbENZfI/q3O
 tr9sUtPmi7U/qi2a3xMO+rPtmUvDzW2FCbQHlo94=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=unavailable
 autolearn_force=no version=3.4.2
Received: from [10.0.0.5] (unknown [213.219.151.246])
 by volatilesystems.org (Postfix) with ESMTPSA id 87FABFB071;
 Sun,  1 Sep 2019 12:38:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1567334320;
 bh=3kYDF5Dh0pt7EUKED3LYoixY8Q7GwQSn8kFIyZq4GaA=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=AIHqePShK9sQVbW8veCfG+OSLTKrk+az9I6Lgh13d/dzU0YrilNnkOnD5Q3PCCoNZ
 +PNVSD2g11Uc9n+YM2bs+Hbb8LUgmn2IS0Nk9iD+EdhWEuOqVdYkZ/a7VQzD+GxHJs
 l6Wlq4VphWzd85xAOE7JBd8hk7V/cdMz11ityOtM=
Date: Sun, 01 Sep 2019 12:38:19 +0200
From: Stijn Segers <foss@volatilesystems.org>
To: hannu.nyman@iki.fi
Message-Id: <1567334299.3823.0@volatilesystems.org>
In-Reply-To: <fca7f10e-0792-91f9-e37e-db6241a861be@welho.com>
References: <fca7f10e-0792-91f9-e37e-db6241a861be@welho.com>
X-Mailer: geary/0.12.4
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.2 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_033850_347641_C89D3A1A 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 release schedule ?
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 openwrt-adm@lists.openwrt.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org



Op zondag 1 september 2019 om 10:59 schreef Hannu Nyman 
<hannu.nyman@welho.com>:
> It is now been over two and half months since the 19.07 branching in 
> early June. So far there has neither been any official -rc builds nor 
> an initial .0 release.

Didn't dare to ask myself, but since Hannu is biting the bullet I am 
jumping on the hype train. An RC would be very neat to get things going.

Stijn

> 
> Buildbot is already crunching the images and packages, and pretty 
> much all targets are green. So there are no obvious build related 
> issues preventing the release. I have also not noticed any franctic 
> discussion about specific major bugs blocking the release, so it 
> looks pretty good at the moment.
> 
> Has the actual release timetable been discussed? When could we expect 
> first official release builds?
> 
> I think that it would be good to get the initial .0 done, so that the 
> wider user base could sysupgrade from 18.06 to 19.07 and the testing 
> by the larger user base could start.
> 
> As long as the 19.07 just sleeps there while master goes forward, the 
> 19.07 is gradually getting stale already before the release.
> 
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
