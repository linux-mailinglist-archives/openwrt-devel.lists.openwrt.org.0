Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DADA21431EE
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Jan 2020 20:03:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5ZANIdOT633drStO6TX+Bh0iFhujCWGbJtv3UHOL7Q0=; b=Cu3aBkULm7ffaXG5Or+R03mUY
	8UecohImGfgcOSDaK8htq9vfH2DOghkuA2c7sfuTFSNd9kpA3n0M9+1/WYaO+Vj9LMVsTE8qcfu/1
	dvstUHWLpDDF2L0E92svTkyGNbqNUYADKQFnLgyBJwwiCcFupRLWWX5m0+2rFyK6FozX1okh6Ym+F
	rxzex4RbOtW3QtRz3mQEXwShn7Cj7QVdGBl1tcd0EJ6Qlmz//ZklvGdCZQZFGLv7ZqiTy65ywPQxZ
	OTOV/sIwQIKsZhtxJ9APwpZtPtgGCKXxsgOGV3vKUNR/keoijxWrQ0/MQU9+uJSuZNYetjwHpg7oH
	Rq7gWxz6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itcKl-0000Zv-3J; Mon, 20 Jan 2020 19:03:35 +0000
Received: from volatilesystems.org ([51.91.248.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itcKa-0000ZC-PI
 for openwrt-devel@lists.openwrt.org; Mon, 20 Jan 2020 19:03:29 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id 06697FAA2C; Mon, 20 Jan 2020 20:03:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1579547000;
 bh=IMA3TOdo9eMRSGKsHYY4PUhWW1KyRI7IhkAU7hwjwZ4=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=XzrdJwme1o8BPAOCyjPsTlsAOXpqnjLeGe20rzA9Fam0Q2bN39TcrITb7tYSk1fgW
 xMLi6bbe/uvtWk8gHqeZ90pX9S6pv2fxtjUIEB/fVx5nqYOhhOd7TFkhGDoV+xTVn6
 yQEGunJKNcYXGKyZwGDKsOd5l7fgiJe0cDUzh1IE=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=unavailable
 autolearn_force=no version=3.4.2
Received: from [10.0.0.10] (213.219.161.238.adsl.dyn.edpnet.net
 [213.219.161.238])
 by volatilesystems.org (Postfix) with ESMTPSA id 903BAFAA2A;
 Mon, 20 Jan 2020 20:03:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1579546994;
 bh=IMA3TOdo9eMRSGKsHYY4PUhWW1KyRI7IhkAU7hwjwZ4=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=V8UwGvDyoiUERVrBsWSR7XdUNOE3sP3+B5M5WgovYyJoSfwYObVPwmn8Fhh3DSZAK
 Cxk9J/a/BtNnpOsnXba4gbqVpGLsZ++9ah1kmNcAtIcbnXDqHCztaK3pJ5TIfE0eQ9
 aBJTl9PRyYbyM9/K6vu1V2MGQI5vu2YSqCUTbLYA=
Date: Mon, 20 Jan 2020 20:03:13 +0100
From: Stijn Segers <foss@volatilesystems.org>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
Message-Id: <1579546993.12306.0@mail.volatilesystems.org>
In-Reply-To: <02c001d5cfc3$e1fc7a50$a5f56ef0$@adrianschmutzler.de>
References: <20200120184931.4202-1-foss@volatilesystems.org>
 <02c001d5cfc3$e1fc7a50$a5f56ef0$@adrianschmutzler.de>
X-Mailer: geary/0.12.4
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.4 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_110324_967425_D4CD9CDD 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] [19.07] ramips: add kmod-mt7615e module
 to Netgear R6350 image
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
Cc: openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org



Op maandag 20 januari 2020 om 20:00 schreef Adrian Schmutzler 
<mail@adrianschmutzler.de>:
> Hi,
> 
>>  -----Original Message-----
>>  From: openwrt-devel 
>> [mailto:openwrt-devel-bounces@lists.openwrt.org] On
>>  Behalf Of Stijn Segers
>>  Sent: Montag, 20. Januar 2020 19:50
>>  To: openwrt-devel@lists.openwrt.org
>>  Subject: [OpenWrt-Devel] [PATCH] [19.07] ramips: add kmod-mt7615e 
>> module to
>>  Netgear R6350 image
>> 
>>  MT7615E support wasn't present in OpenWrt's mt76 version prior to 
>> 19.07
>>  release, but it is now, so add the module to the image.
> 
> what about cherry-picking 
> https://github.com/openwrt/openwrt/commit/9861fa7abab97cb928aaa6cd5732a413d973ac95 
> instead?
> 
Bah! Just like with the Xiaomi, you're all too right about that. Should 
have checked master first...

Stijn


> Best
> 
> Adrian
> 
>> 
>>  Signed-off-by: Stijn Segers <foss@volatilesystems.org>
>>  ---
>>   target/linux/ramips/image/mt7621.mk | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>>  diff --git a/target/linux/ramips/image/mt7621.mk
>>  b/target/linux/ramips/image/mt7621.mk
>>  index 53a264f527..fd3a8e558e 100644
>>  --- a/target/linux/ramips/image/mt7621.mk
>>  +++ b/target/linux/ramips/image/mt7621.mk
>>  @@ -374,7 +374,7 @@ define Device/netgear_r6350
>>     IMAGE/rootfs.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
>>     DEVICE_TITLE := Netgear R6350
>>     DEVICE_PACKAGES := \
>>  -	kmod-mt7603 kmod-usb3 kmod-usb-ledtrig-usbport wpad-basic
>>  +	kmod-mt7603 kmod-mt7615e kmod-usb3 kmod-usb-ledtrig-usbport
>>  wpad-basic
>>   endef
>>   TARGET_DEVICES += netgear_r6350
>> 
>>  --
>>  2.20.1
>> 
>> 
>>  _______________________________________________
>>  openwrt-devel mailing list
>>  openwrt-devel@lists.openwrt.org
>>  https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
