Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98BD3E6562
	for <lists+openwrt-devel@lfdr.de>; Sun, 27 Oct 2019 21:43:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RnMfknvCAvnqx03/GVR7BWfMJ2TWiTgy2ETiOIsFww4=; b=j6eHhumUqpTR1M
	1af6x0Nklk0RcqFmUhwdhDgrMuZhwBoL3ES6WKYFkfduR8VDDZU0V9REw9kL3JZ/0QuWloqN60PsG
	AidvSlJl5uhnkteWmQvqMaGgqRN4lHoCkFlJXCPFqHjk0uBFVBDYBuuPpnfRnCR1uiratR5OfyRP3
	Ug8VH+ju0rdYqHNxTTnMlQdzatA6EXgId1f2LkrDjpX+wrnU6bI8z5vAGgkQOG0WddYefzT9IE2sR
	5mwY49j/qIZWs78FB2rLJRJfbt3B4XF5yakLHaAorGHLkWMRdhkfE7+XDzKCJiihpTFIsw/5szuWB
	QWVhKjHHSQTQ7qdNV/0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOpOD-00051S-DW; Sun, 27 Oct 2019 20:43:53 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOpO7-00050v-8y
 for openwrt-devel@lists.openwrt.org; Sun, 27 Oct 2019 20:43:48 +0000
Received: by mail-wm1-x344.google.com with SMTP id v3so8143229wmh.1
 for <openwrt-devel@lists.openwrt.org>; Sun, 27 Oct 2019 13:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oWfXy0EVGwvF/hrbI3cEtKMtppacBLZRYWZNwMlnyaE=;
 b=GKyF77qSsloYqelYgbG0UE8moPNTHWEoSQWIBUMUuGmJJUQKEi/I3on0PebSnJ+PoX
 GOyltHxAmTWPIthUogRwA2cjXA0+Y8OGkhaH7SDKHbK/SLBtWB6V+X2D7TxB1j2ewz4I
 7p868nhXLUjpmqnE+eunWmj1rW5chMNVRjQPQ/nD/LK5lkCo76izfmixVHi8s8wtBuya
 hSJiR0m+dO+EqlngiqKvtY9YW28pTNc6TgXJKfrXcg2a/zhg5mqG/sF3xIiEmPPwxIOE
 ru/zz2Sq0gu68p4VNUWwzTopDOO+Ab6HsiqjW2lJU4fCDWoB/R2t1cjXXRMzf2yJhO6H
 XA2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oWfXy0EVGwvF/hrbI3cEtKMtppacBLZRYWZNwMlnyaE=;
 b=X8Mj+0MyYXSur5vJXs7yeyL8/v/AIWZGx5CAbMEsd3gqY1nJxmkl4rvSvjv0ymINlU
 07adFMPTVeBEP7ILGmiGtEs7MtF040xv+jq1sNnIH3JkJi9Hv9e4GXX3sYqOagzx8eTI
 F1+TMGNlHdoRI6qFEkcQmNtcYWsvmLgU4RkOTB2nVCjRu2jvcBvU2Onv/JOdYOxGlD5t
 rDSMYXnCs9WVtSSaOQ6v5oBsXuaUnccFSXKOYe8tfOKyr0iglnumzEtFOwozBulC+wcm
 3mV6uHAFodgvKwGyZEeejM0LjDlGN2ZLA0fuMY74EyiPUL1u4MiafygZiaLc1a2/+fCg
 3WUw==
X-Gm-Message-State: APjAAAWU/7YubKeFjx/kHRfCDkcaw8ZSeusrfxmccL+HMFhjKuQveRcJ
 eEFqs7Q5BySzxnMaRZb23WOD4NWWutC4pSpPV2DoE/Mu
X-Google-Smtp-Source: APXvYqxo1TmkdT+hWP7KAEQYTmFbEG4FiI/nDwMyMsAHcR7aVs7XbQGgYzjkDg6JvBWaSKiPFpl9lt7pSkUifB/fH2I=
X-Received: by 2002:a05:600c:2503:: with SMTP id
 d3mr13556586wma.44.1572209023105; 
 Sun, 27 Oct 2019 13:43:43 -0700 (PDT)
MIME-Version: 1.0
References: <20191027174438.25795-1-hauke@hauke-m.de>
 <20191027174438.25795-2-hauke@hauke-m.de>
 <CAKxU2N-fFRibJJqdQHgRqPiSTQ0Pi-cQe-Tir-Ac5tC5kgK2+g@mail.gmail.com>
 <d2486e48-e218-063c-cd10-a655d3539126@hauke-m.de>
In-Reply-To: <d2486e48-e218-063c-cd10-a655d3539126@hauke-m.de>
From: Rosen Penev <rosenp@gmail.com>
Date: Sun, 27 Oct 2019 13:43:32 -0700
Message-ID: <CAKxU2N_hONXX6iBh9d89wyQw3jYoYUF30fAFMJwTv5jghFFvrg@mail.gmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_134347_339616_08C73CED 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 1/6] buildsystem: Make PIE ASLR option
 tristate
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
Cc: Felix Fietkau <nbd@nbd.name>,
 Daniel Engberg <daniel.engberg.lists@pyret.net>, lynxis@fe80.eu,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Dave Taht <dave@taht.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sun, Oct 27, 2019 at 1:32 PM Hauke Mehrtens <hauke@hauke-m.de> wrote:
>
> On 10/27/19 8:05 PM, Rosen Penev wrote:
> > On Sun, Oct 27, 2019 at 10:46 AM Hauke Mehrtens <hauke@hauke-m.de> wrote:
> >>
> >> This tristate choose allows to select to build only some applications
> >> with PIE enabled. On MIPS binaries are getting about 30% bigger when PIE
> >> is activated for the, which is a huge increase.
> > Some of the size increase can be mitigated with extra compile-time options:
> >
> > TARGET_CFLAGS += -ffunction-sections -fdata-sections -flto
> > TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed
> >
> > LTO sometimes causes problems but the others should be safe.
> >
> > PKG_ASLR_PIE applies $(FPIC) to both C and LDFLAGS. I've noticed that
> > applying it only to the former increases the size but not as much as
> > with both. No idea why.
>
> Hi Rosen,
>
> Thank you for the hints.
>
> I activated -flto for dnsmasq and the size was decreased by 8% which is
> nice. I will test this a little bit and then send a patch to the mailing
> list.
>
> The GCC documentation says the following about -pie:
> ---------------------------------------------------------------------
> -pie
>     Produce a dynamically linked position independent executable on
> targets that support it. For predictable results, you must also specify
> the same set of options used for compilation (-fpie, -fPIE, or model
> suboptions) when you specify this linker option.
> ---------------------------------------------------------------------
> https://gcc.gnu.org/onlinedocs/gcc/Link-Options.html#Link-Options
>
> So we should set it for compiling and linking.
>
> GCC can activate -flto also when only some of the compile units used
> LTO, but it should also be set for both steps.]
In my experience, setting -flto is LDFLAGS usually does nothing.
CFLAGS is where it makes the difference. But yes, I agree.
>
> Hauke
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
