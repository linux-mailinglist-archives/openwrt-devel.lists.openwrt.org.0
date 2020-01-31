Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6287714F239
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 Jan 2020 19:34:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ILOrfTGXBUre84lB7PLeKQKI5x8hwFv3z2viIPTkSe8=; b=STF9ZDpikljDox
	xb3UL0neYDy1Tq0l3s10ACfYcQFv8Vx2Ng9TMO04qFluwfemx6CwMIjqks/WyXbi5v3L/GMt4o6Pn
	wktX2NDa9J9COIvL2vJ1R6oNfdiQkCkISnajUFCrixOLh/7xrPx59DLClSZhWL//wgPXyXhl3FGXU
	9jZuh3B/Tu2rWQZ1R8qX6eLKWcN8a9orEhpJFPHz1rgzhly8pd9As6tNbGFs23BccwWTHfMPr/LFP
	o+7OzK93mvWC8rSgGZXqqALwgM9WeMOcIra3DMZF7zcuZ/vf9F+7aqjTVHfGvrnGNVDS3Sx0rI/UN
	oK8avcIFZUQbA6DHOyjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixb76-0006cd-4b; Fri, 31 Jan 2020 18:33:56 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixb6y-0006cB-BT
 for openwrt-devel@lists.openwrt.org; Fri, 31 Jan 2020 18:33:50 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue011
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MeCYx-1jWewo2CE3-00bGFl; Fri, 31
 Jan 2020 19:33:45 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Tomasz Maciej Nowak'" <tomek_n@o2.pl>, <openwrt-devel@lists.openwrt.org>
References: <20200131154620.25773-1-tomek_n@o2.pl>
 <20200131154620.25773-4-tomek_n@o2.pl>
 <010201d5d84f$117d2d90$347788b0$@adrianschmutzler.de>
 <33ee79ee-6273-e744-ddeb-22ebe0ab8d2f@o2.pl>
In-Reply-To: <33ee79ee-6273-e744-ddeb-22ebe0ab8d2f@o2.pl>
Date: Fri, 31 Jan 2020 19:33:44 +0100
Message-ID: <019201d5d864$f8896220$e99c2660$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQIg9Z1HjtTSr13X0aN4mb1BSdO/fgEITCZSAST3czAB3FKEpKdOkAww
X-Provags-ID: V03:K1:9vmL8K5PXogkBmCjxoBDrzHw9r10u73LLpjxo3eAMMk7ujr7Yuy
 ioEfpfd3gQb8WM0I8q/9G0cNa/+pYxiLlXSWrbqrzW+JJ7aqlxyzeeA5BRJrpMzvhe4oFoc
 5h8+6ncqMR/S34V1zobJoJLH6M2IFtbY8Tl1Oh1+nkjTEJRapYCznxIKwgu1LrElk8UkeiQ
 T7wdSDVhqXVnOSRPeDmmA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:uomFTOTbDhE=:9vHmfw0dugtu7eJTiG+QUo
 9Q8tq0gKZoK+sIr5ehhkm+/NRZfF1ldNq6VdhcpvU4wz4dav0DizjMuATlhlhrhI3Tnq2LtLC
 dcZw7RkV2gDb+YaGEj2yhP4UroJY6nIZhYCRkIPMSnD1ffe3i2wchhyMHYD1QIlhnBEVi9nYL
 7+MMKKVjjfowe8qLpiqQdox4KpJZvc1kJd2a89rOZpomS2nrrkzsbuuG9G4+cNJp5Z4l8AMIk
 4PnVQHEd6154/TYQeEAi/3ygh6cQdPBJIhXBsL1O5Yz7FDRVp2Soxqmd0kT908w4StXEzcWih
 /2j7sW5+hEjPyNk1tujOZpSsw7kIIwOCZhsDplLeTL4qWHSgYIsVjQOcapQLBE+pD37N2Mdlv
 I3ygVBFpZY+oHCJ93bwuFmCMA9Fe6JXnzYDhLam87UmCb51E9tOUPOb8fI5uOoz043c6fvocf
 9KOwlFB8VT3cPye5uGE2D+3v/HoLCbcVrDtFzGZMnZm3EsgWiRlHJyH2rLFHBNAemb3G8H8uc
 YXFoBLcmeW+GLAZ+BoM4hC6xeCyfv+zmg2083t+PKZSOCQRUpHwyeVbFBNBrt7ekIXnA+BGsl
 jYgeBUPwROHrJ6nUcsxXBhP5Ap/rUrjjfm9IXWyNhus2XXShdD2TIXSP+Xvu+w2TOQU7KV+k1
 4Oss124+ZPnBlgy/BuXziUIhKjAi3FPaOXKFYElBnbx7Td5ZPrfFjBoLal0RT3khLPy/jn4v1
 jWJm6TksIn0UG/xzcIXsT7KLjp/EZB/0QKUl/OsFmdH4iPW9TB6wF+Oqdrwuow6f04Qhu7BJz
 6x4S7+TeuiiuztGvvz0rzMsvTFoCrpcIGjVxH69riQwz4l6k1d9q80UefyTwaw57X/S8A3s
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_103348_691258_9F997723 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 3/8] mvebu: image: drop empty variables
 from default profile
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

> I saw similar behavior when variables were set but not added to DEVICE_VARS.
> From the tests I've done before sending, the produced images looked fine, but
> I'll re-test that to make sure.

When variables are set, but are _not_ added to DEVICE_VARS, the variables will have _one_ single value for _all_ devices, i.e. the one set for the last device.

When variables are _not_ set, but are added to DEVICE_VARS, the variables will have the last value set to any device before (i.e. the last device setting it). Note that Device/Default counts like an include to the current device there.

I've tested this for a bunch of tplink-safeloader devices in ath79 by adding the following line to the Build/tplink-safeloader definition:
printf "$(DEVICE_TITLE) l$(LOADER_TYPE) x$(TPLINK_HWID) y$(TPLINK_HWREV) z$(TPLINK_HWREVADD)'\n" >> /data/openwrt/safeloadercheck.txt

Best

Adrian

> 
> > So, setting the variables to "" in the default definition actually makes sure
> > that they really are zero for those devices where they are not set. (Of course,
> > typically those are the devices where they aren't evaluated anyway.)
> >
> > Best
> >
> > Adrian
> >
> 
> Regards
> 
> >
> >
> >>
> >> Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
> >> ---
> >>  target/linux/mvebu/image/Makefile | 4 +---
> >>  1 file changed, 1 insertion(+), 3 deletions(-)
> >>
> >> diff --git a/target/linux/mvebu/image/Makefile
> >> b/target/linux/mvebu/image/Makefile
> >> index aeabffdca2..d9e4b1acce 100644
> >> --- a/target/linux/mvebu/image/Makefile
> >> +++ b/target/linux/mvebu/image/Makefile
> >> @@ -75,6 +75,7 @@ define Build/uDPU-firmware
> >>  	(cd $@-fw; $(TAR) -cvzf $(KDIR_TMP)/$(IMAGE_PREFIX)-firmware.tgz .)
> >>  endef
> >>
> >> +DEVICE_VARS += BOOT_SCRIPT UBOOT
> >>  define Device/Default
> >>    PROFILES := Default
> >>    DEVICE_DTS = $$(SOC)-$(lastword $(subst _, ,$(1)))
> >> @@ -86,10 +87,7 @@ define Device/Default
> >>    IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
> >>    SUPPORTED_DEVICES = $(subst _,$(comma),$(1))
> >>    UBINIZE_OPTS := -E 5
> >> -  UBOOT :=
> >> -  BOOT_SCRIPT :=
> >>  endef
> >> -DEVICE_VARS += BOOT_SCRIPT UBOOT
> >>
> >>  define Device/Default-arm64
> >>    BOOT_SCRIPT := generic-arm64
> >> --
> >> 2.25.0
> >>
> >>
> >> _______________________________________________
> >> openwrt-devel mailing list
> >> openwrt-devel@lists.openwrt.org
> >> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> >
> 
> 
> --
> TMN


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
