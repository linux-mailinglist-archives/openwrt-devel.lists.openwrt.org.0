Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC291B4AD5
	for <lists+openwrt-devel@lfdr.de>; Wed, 22 Apr 2020 18:48:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:In-Reply-To:References:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NI7scqrnYDq7ZKQs3OQ4f8oYh9jEAfrGBs7lznz5b7A=; b=P0png+cvweao0rPEUN78aqlA6
	LofzFePNd4PfdadPkA/mpNOFBPMsHeHAJpOQrjZgfHj1HvOD6uXv5BXWKO2bQk7vz1mAOrbSp2pbr
	YXiDmePrjWSWRgMIGi9N08BaYM5vQn+/07X/8x4SepXN/QAYShgHzvawMY3AK4LQi3/SrmllkwPeD
	XWiQZWWBO1fLUuVCh9iglIw8v2INxQSWqCZfQ8aNq4G3qZB+NG2Dq19n1mhkvtRya4kKnA0A3nT5m
	Zj6n4ns8Rabb8nRCUGSb9swuCgXN5t7eK9+u//dFeCDNpgVTTSn/zAHVTwTUUOg8j7yJ/b2YPv56G
	chy6j+VAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRIXl-0002zF-WF; Wed, 22 Apr 2020 16:48:14 +0000
References: <20200410223709.1974-1-dobrovolskiy.alexey@gmail.com>
 <CANCYDrwqC8aXJvOJu=oGzv-L3rgxW58-EG=ETyqWKc-O4EVsTQ@mail.gmail.com>
In-Reply-To: <CANCYDrwqC8aXJvOJu=oGzv-L3rgxW58-EG=ETyqWKc-O4EVsTQ@mail.gmail.com>
Date: Wed, 22 Apr 2020 18:47:53 +0200
To: Alexey Dobrovolskiy <dobrovolskiy.alexey@gmail.com>
MIME-Version: 1.0
Message-ID: <mailman.5831.1587574089.2542.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Martin Blumenstingl via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [RFC PATCH] ramips: remove patches for USB-dwc2
Content-Type: multipart/mixed; boundary="===============7959428708473950899=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7959428708473950899==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============7959428708473950899==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRIXf-0002xk-D1
	for openwrt-devel@lists.openwrt.org; Wed, 22 Apr 2020 16:48:08 +0000
Received: by mail-ej1-x641.google.com with SMTP id gr25so2357057ejb.10
        for <openwrt-devel@lists.openwrt.org>; Wed, 22 Apr 2020 09:48:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4vWU9RrgzzBWIw/2V1U+KZ4UTBVKA6wu5oRCy9fFC0Y=;
        b=slqg8n79oQdWRTEqah7IMcVnFQQjO7JlcqBUULsvoCK/U1CnzQ81gW3MhcZMbbS3ir
         1uoJlrmwCra40Xlpheznw9+gU/pEdsaA0BL7aOqfYDoz7XIvmjMKHhu2hrgfWd26/5re
         uTNEdNSikN4ftjfyvncGBjDQiTpQXjzkPTspSVITZHDEOqJ47i+ZnTxT+hN5L9/jwvdX
         LUs0rvIfCm/BoUB5ZT96zcWEHB2lkrEwuy/Cux9SMTf5Ew6OWE0VL14AmIKIuie956hx
         YPOIke+z96NRWaReZ2TVY2aIaVLxVoMdGJUFBNKaD/0jiqYOGORXq4gr42rBW6uKQ2VN
         DwcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4vWU9RrgzzBWIw/2V1U+KZ4UTBVKA6wu5oRCy9fFC0Y=;
        b=hSwZvMVo5JloIxaEqzPi+h+/us8AfsdDSh1uqWgnz2UeM5LqE8DOqfDytbZVupcOv6
         InbrTSjUMuKZfetAQ/oavAi8pyuaiKWOmax91Q8YbCRI3kIXiSE0J6RcZXBFTFBEaTy+
         /3BUTc3FqTl65LLkf2gy359al+DB28zgiWsiI7p54uoR7xfaSCfeBV5J7MlTAbg05NCN
         KFC/QOt88/wPG6tGVVv6dtLCB9iwsdmoEZ2Jtqi/TEq7G1BchCzq1ggDKBS1xrneYFVy
         x43PQZoiYG5Q1e+8ehtVeDJOhumA9q3jGQTZoILLXvePAJUmZrBP6q94vC5zo7ON6iKH
         r64g==
X-Gm-Message-State: AGi0PuYCmk4Gz6Eki0dXLDIhf0icEFdRhWL2sb4Zz1LJfLJSaOrsCx3I
	ZNCtDEKJIj8Y6+4GxmWs1UYQzoMRN2+W93kTPmk=
X-Google-Smtp-Source: APiQypLBZzNC6tTX0cUAAIcyq8XeyqmD6rU7hqd4tv0JgKYLkDkFQr1hwqTETJdLkQqmQ1CUJ5ZWjV3LSAza9vYXuME=
X-Received: by 2002:a17:906:4048:: with SMTP id y8mr26692299ejj.258.1587574084305;
 Wed, 22 Apr 2020 09:48:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200410223709.1974-1-dobrovolskiy.alexey@gmail.com> <CANCYDrwqC8aXJvOJu=oGzv-L3rgxW58-EG=ETyqWKc-O4EVsTQ@mail.gmail.com>
In-Reply-To: <CANCYDrwqC8aXJvOJu=oGzv-L3rgxW58-EG=ETyqWKc-O4EVsTQ@mail.gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 22 Apr 2020 18:47:53 +0200
Message-ID: <CAFBinCDioCe5ogz6vEspEsTigV+92f3UeKo1RBz6c+=Zd+0AnA@mail.gmail.com>
Subject: Re: [OpenWrt-Devel] [RFC PATCH] ramips: remove patches for USB-dwc2
To: Alexey Dobrovolskiy <dobrovolskiy.alexey@gmail.com>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_094807_464078_9AC67A35 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain

Hi,

On Wed, Apr 22, 2020 at 1:21 AM Alexey Dobrovolskiy
<dobrovolskiy.alexey@gmail.com> wrote:
>
> Hi,
> USB does not work in master at 35f208da3c built with testing kernel
> 5.4 with or without 0032-USB-dwc2-add-device_reset.patch.
> (ramips, ZyXEL Keenetic)
> In boot log:
> [    6.888293] usbcore: registered new interface driver usbfs
> [    6.899641] usbcore: registered new interface driver hub
> [    6.910630] usbcore: registered new device driver usb
> [    6.930904] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
> [    6.955086] SCSI subsystem initialized
> [    6.970394] ehci-fsl: Freescale EHCI Host controller driver
> [    6.985235] ehci-platform: EHCI generic platform driver
> [    7.006666] dwc2 101c0000.otg: Configuration mismatch. dr_mode forced to host
> [    7.033189] dwc2 101c0000.otg: dwc2_core_reset: HANG! AHB Idle
> timeout GRSTCTL GRSTCTL_AHBIDLE
> [    7.050637] dwc2: probe of 101c0000.otg failed with error -16
> [    7.074662] usbcore: registered new interface driver usb-storage
>
> Full log attached to FS#2964
We had a similar issue on the Lantiq SoCs a while ago.
Based on these issues we submitted the following patches upstream:
- [0] usb: dwc2: use a longer AHB idle timeout in dwc2_core_reset()
- [1] usb: dwc2: use a longer core rest timeout in dwc2_core_reset()

while looking at target/linux/ramips/dts/rt3050.dts I observed that it uses:
  reset-names = "otg";
while the dwc2 driver actually [2] expects:
  reset-names = "dwc2";

quick disclaimer: I don't own any ramips based hardware, so I don't
expect that I'll be able to look further into this issue.


Regards
Martin


[0] https://github.com/torvalds/linux/commit/dfc4fdebc5d62ac4e2fe5428e59b273675515fb2
[1] https://github.com/torvalds/linux/commit/6689f0f4bb14e50917ba42eb9b41c25e0184970c
[2] https://elixir.bootlin.com/linux/v5.4.34/source/drivers/usb/dwc2/platform.c#L215


--===============7959428708473950899==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7959428708473950899==--
