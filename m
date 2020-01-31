Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F9BE14F052
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 Jan 2020 17:02:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IIX/Wz5bwdSYtaAU7Q0D/Aqu2++xzhwOwZnJZz1bSJY=; b=l9Kv/gVCBQOsSs
	RPkBOH4RVJYspMwWHYpm1/v0irLqLdENkMtD9+hLNKn/D0iAcQjbs8A3I7dV+RlyK4OQnaZia9lP8
	bOaeecxYWEJibwNQ86zu26WmyA0pShO36w7RZatVTf5oIiy3XddxOr56SdCsU13vJSQgauVjdQa+x
	A5yUH1wR7c8vX7EBb+7qV5sV1iMgD5xMnebZ9pdLF9lrzlya1nIn5hl4MrPtQ8chhftEt9U0uNAfM
	kU2OGOFvpqSFEPv0VRaFpw8yrnCSinwuB8GRUzehAtJfa2uK/bn3aQapQPPUblIdHshq5q3/kpOLH
	JGjkTkdPBtIelUKTJmRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixYkS-00065L-SZ; Fri, 31 Jan 2020 16:02:24 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixYkL-00064n-Ci
 for openwrt-devel@lists.openwrt.org; Fri, 31 Jan 2020 16:02:19 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1N0Zfg-1jiwCm19ue-00wUFk; Fri, 31
 Jan 2020 17:02:12 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Tomasz Maciej Nowak'" <tomek_n@o2.pl>, <openwrt-devel@lists.openwrt.org>
References: <20200131154620.25773-1-tomek_n@o2.pl>
 <20200131154620.25773-5-tomek_n@o2.pl>
In-Reply-To: <20200131154620.25773-5-tomek_n@o2.pl>
Date: Fri, 31 Jan 2020 17:02:12 +0100
Message-ID: <010401d5d84f$cc88c8b0$659a5a10$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQIg9Z1HjtTSr13X0aN4mb1BSdO/fgGAo88Yp2KujTA=
X-Provags-ID: V03:K1:0vuNJSjy+3MWz9U5/ZAmsSxGLGpnNxhqpyvdk5SKbdC64aqJ2Rj
 KTYeebi0QBABkB2304dWFrwCbCxtNUPOpk3zJijOYTWtqtgUkIYy94JmV5C/1/1BmA/Bzpy
 U2xEdfqUWhnE8hBQoXAkBJLqsJHNGeXYJtuxycYNO6rUTP8fzGdywn2n30T5o4/ida38bzv
 C+hxZDwZb5R4ZWz6141BQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6LmIy1OmpqU=:nD/6jNkdJlxIBVZhZMh2Gx
 jp991c39u4I5PtQfO/ljgRR7IE5UV6+8Gd5okumOS7qZ/aUbwa/DSEfu2fUuUKOaAeysiwCWE
 96HBdOifJqoKHoK4a11kzTI5tdokGYxpbgcmLWKkjfzhoFzTzGm9GHaolT0QVlQX1XycZBewL
 Yq3CnbmIsIuTVuYztrZptrLfdIALKYBI9Ruh0WWvfGr+iNFn2OYVF9pAWlsNvIAiCOm5KOceJ
 tGexnutACkyJx7uPRcDcKsIeCsSaPKKVWd3WwOgiHzldwWrzv175iFnW/HDndnMLaL0qYQNM0
 2L/LOLYo5xG4yO1oXPRamkrdcFMLx7tpxgK7Q81/ruIK8sqec72EcAMsDKBjqUSSCApeU1HRN
 yikA9vNo/kfqedbR9P3J3cjMHHIjwlI4Lj/kST/M7HAWTH8hrw9AleYQ3BoTRPzCvW9dsmKei
 1Sre7y6rX53KIP4FA9cebr2koVBmGu+A4i82vyo5A8ZMKjJ5ocAGDl/RpxezGsh5+xqgdXJOv
 Eyj30bz0SNB7uXvuZ+ukdPaDzIb1Cij3lf0iiF9/ld1qK7tP4H3Wj6u4vKdM5f1+xd/ShpZOF
 JB3mTdklWjySrsElwlskflBTT6PAe+ptKR63J+vNi2fa7/tmM9yypUVsWdYTazQlW8vbMnKc9
 FO2HZQ/PUnvIHc6dTBCezhIrC2jQ8zkDL4AWfw1t/m1rQDuMJdC6k8YihKr/7z13NYw+N0ziq
 EjuXaRMearOsrV/EDNzQCUaPG5YCRp6w8tupAHHeQZ74W6Ysp1ZSQ+Cdpt5Mz2cTJbDDqm7me
 AFJ4VMtQJjlxz1SAw1YBzWB9JZ9/fpjEBt654D7f6HcQS+q3QbI5WwoABaFCGVuunMNu5rl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_080217_724095_D3E377C3 
X-CRM114-Status: GOOD (  10.76  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 4/8] mvebu: image: keep global DTS_DIR
 intact
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

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Tomasz Maciej Nowak
> Sent: Freitag, 31. Januar 2020 16:46
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH 4/8] mvebu: image: keep global DTS_DIR intact
> 
> Don't rewrite global DTS_DIR, instead, use proper variable for
> specifying devices dts directory.

Have you build-tested this? DEVICE_DTS_DIR and DTS_DIR might behave differently
when it comes to includes in DTS files.
That's why I couldn't replace SUNXI_DTS_DIR with DEVICE_DTS_DIR when touching
this some months ago.

Best

Adrian

> 
> Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
> ---
>  target/linux/mvebu/image/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/target/linux/mvebu/image/Makefile
> b/target/linux/mvebu/image/Makefile
> index d9e4b1acce..ae4d3b9594 100644
> --- a/target/linux/mvebu/image/Makefile
> +++ b/target/linux/mvebu/image/Makefile
> @@ -91,7 +91,7 @@ endef
> 
>  define Device/Default-arm64
>    BOOT_SCRIPT := generic-arm64
> -  DTS_DIR := $(DTS_DIR)/marvell
> +  DEVICE_DTS_DIR := $(DTS_DIR)/marvell
>    IMAGES := sdcard.img.gz
>    IMAGE/sdcard.img.gz := boot-scr | boot-img-ext4 | sdcard-img-ext4 | gzip |
> append-metadata
>    KERNEL_NAME := Image
> --
> 2.25.0
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
