Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A37C1CF612
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 May 2020 15:45:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pTlsAZYIl7I7E2ipOPB+LHRoGuhhbnkrpUkTxqZJqSo=; b=r1iBIE+FhAzg9PXOVUKtKVh9r
	OeF7QvCOgj8VaVyp0Ha30a5uXS9RyodOLNrUIJYbVMSUhgH6MAIbH1QMOcGHMl1EToBwcSq276eES
	szp7VK0VcL4R7M6CUnCVWZzVuo9siDmHZ1dkWXZK8djPbrNug3XQF76E/00Gpkq0hNucyNU5/f2bO
	XO8zPwMcRwwz/x2HnRZWMaYVrEdj7pP1MgJ2jHH14jUjWCDntzYIRjt4ZEVrBIaknLCYqsMxr0PBQ
	dNMtBJaj/MQcoO0udJjvRABRG8k2vecfmV2LFG9uPu72WlAmXkXek5CGG0dLkSdPavlHyaed6C0gx
	r0eqaZw4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYVDi-00051F-CE; Tue, 12 May 2020 13:45:18 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYVDR-0004NH-9E
 for openwrt-devel@lists.openwrt.org; Tue, 12 May 2020 13:45:03 +0000
Received: by mail-wr1-x434.google.com with SMTP id v12so15424468wrp.12
 for <openwrt-devel@lists.openwrt.org>; Tue, 12 May 2020 06:44:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=Ed2iFUmdm5ZpwE280yKUMynF8C7v82QhVBVwOGo1rX0=;
 b=lB7tw7n2kQ4gonY6ldgclQQ2K4S9y0vqe6/0DIZzzmjbK+3fvYNavtMu5smGtiNbqq
 WziG2JJK2Gu5cDp4KkpXjWcPkogBkgM4aNqp9U4pJizT5/YwtCRvtxsBJCYgFroMemSA
 jVOAshzyRU8I2sAsX3TrfG1H28BrM+FjP339Q/s2pcPaE9XZo8wm6mf9uDpXYgwCzxip
 zgB2rCL4CsX0YoKvCCG4iGHqT0kkkgATzSPLVrgoxxN6uWD22dyUOm3PbKImydFerrm2
 ZP0wtEgUzSfMJUw6aUeSQeddwy96Yt8fGC5YJqTZqmUeKCjjoojOWoxPvFtUJ5y1fsQG
 Z3Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=Ed2iFUmdm5ZpwE280yKUMynF8C7v82QhVBVwOGo1rX0=;
 b=e1AE3aOzAJsMfHPwHVxXWjarF5kLGw6GcJRoNRXv5mKSjFTJVIy7Z9mOZM1Okgvp5q
 UpCqsEk1MpoezJ2TB8+fmmpSGtqMi9P0syj1J5BlZLNKQ9RD6PXYO0IP3Lhr3Ed9qyQ4
 b49HFFKWeWGsRHzLdeSMl4A2kYu91SXEcgCwkWfxjYLaDYE1BXFuqHC/dVEgLTXQfxKF
 lJUBlSdfW59M3Usz6ozJiQUBEHraBierp6jzJ8YZj/94pRAn1JwbTJcT70sGKrktZpKu
 JTZiM5fNW5CuSydU0tTNttZek+4uYRdm3qX6Srr1HPDYzIrpaYI+klqdR4HS8tLTfwtM
 Fa1g==
X-Gm-Message-State: AGi0PuYFqHjKG7/lTH1KXoA35hO7iMwnDglrHNjhwgMDx3HCVYnNS3AM
 L/QrTlIKyqndlbsaBL2aO6Q=
X-Google-Smtp-Source: APiQypJREhS3WiB1hrGAFbEIWDRyz+XcPgtVUwz3rCXZ5HUtBwQ6FQllkg4sz8CWOTzTkHM01y+NeA==
X-Received: by 2002:adf:f981:: with SMTP id f1mr24674233wrr.244.1589291098726; 
 Tue, 12 May 2020 06:44:58 -0700 (PDT)
Received: from mStation ([79.51.202.241])
 by smtp.gmail.com with ESMTPSA id w10sm23740924wrg.52.2020.05.12.06.44.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 06:44:58 -0700 (PDT)
Date: Tue, 12 May 2020 15:44:56 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@mStation.localdomain
To: Stijn Segers <foss@volatilesystems.org>
In-Reply-To: <RGY7AQ.6L62V3KCGE1C@volatilesystems.org>
Message-ID: <alpine.LNX.2.22.419.2005121544390.322033@mStation.localdomain>
References: <20200512100520.3150-1-foss@volatilesystems.org>
 <RGY7AQ.6L62V3KCGE1C@volatilesystems.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_064501_372464_ABC0FB4D 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:434 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mrkiko.rs[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] mt7621: add kmod-mt7603 to DIR-860L B1
 DEVICE_PACKAGES
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

Out of curiosity, is MT7602 supported?

thanks!!
Enrico


On Tue, 12 May 2020, Stijn Segers wrote:

> Date: Tue, 12 May 2020 14:53:15
> From: Stijn Segers <foss@volatilesystems.org>
> To: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH] mt7621: add kmod-mt7603 to DIR-860L B1
>     DEVICE_PACKAGES
> 
>
>
> Op dinsdag 12 mei 2020 om 12u05 schreef Stijn Segers 
> <foss@volatilesystems.org>:
>> The DIR-860L B1 has an MT7603 radio but was missing the corresponding 
>> kmod-mt7603 module in DEVICE_PACKAGES.
>> Add this so it gets included by default, even when the kmod gets set to 
>> [m].
>> 
>
> Nevermind me... This device has an MT7602 radio, not MT7603...
>
> Stijn
>
>> Signed-off-by: Stijn Segers <foss@volatilesystems.org>
>> ---
>>  target/linux/ramips/image/mt7621.mk | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/target/linux/ramips/image/mt7621.mk 
>> b/target/linux/ramips/image/mt7621.mk
>> index 082bb31b79..f16bf2a5bd 100644
>> --- a/target/linux/ramips/image/mt7621.mk
>> +++ b/target/linux/ramips/image/mt7621.mk
>> @@ -227,7 +227,7 @@ define Device/dlink_dir-860l-b1
>>    DEVICE_VENDOR := D-Link
>>    DEVICE_MODEL := DIR-860L
>>    DEVICE_VARIANT := B1
>> -  DEVICE_PACKAGES := kmod-mt76x2 kmod-usb3 kmod-usb-ledtrig-usbport 
>> wpad-basic
>> +  DEVICE_PACKAGES := kmod-mt7603 kmod-mt76x2 kmod-usb3 
>> kmod-usb-ledtrig-usbport wpad-basic
>>    SUPPORTED_DEVICES += dir-860l-b1
>>  endef
>>  TARGET_DEVICES += dlink_dir-860l-b1
>> --
>> 2.20.1
>> 
>> 
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
