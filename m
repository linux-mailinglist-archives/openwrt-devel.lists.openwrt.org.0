Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE3E2003D5
	for <lists+openwrt-devel@lfdr.de>; Fri, 19 Jun 2020 10:27:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TE3mGkV8sSfBWaIW0LNkbjlXhvLEJ0uvJCqTJIn6+04=; b=arlU4d+muUT8Ky
	2bNMa7ZHl6ohlQFRBnyzVus7uZGhe6s1c5gdAZPhZPyIPTF1Nk9+tx+nz+Iu07n62qauM5Pk0tJYN
	QqgcEJzFVUWsScxm4OXHHPJ+eXHDJNbMJq6xopweNMX0BsjJs5R9ipa7R2mJIWO31rZIvHE0UJlfa
	PVXQOwDURA3tPHoBrkUJuu3T0Rqqbhlnj1AhM7eob1PpI81JbSVXD5CaZ8zeulgamHNqgOc1I380X
	eM4o4Bz4SdGuRdflBxuhW1ZfVPzOegUpeFdhBxpO3oKGo6QU23cRKRkGLpbldLwROQTL3RMuqB5HJ
	NCOYU/GBLGy/FQo8ZGSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmCMO-000137-9W; Fri, 19 Jun 2020 08:26:52 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmCM4-0000w3-Hx
 for openwrt-devel@lists.openwrt.org; Fri, 19 Jun 2020 08:26:34 +0000
Received: by mail-vs1-xe44.google.com with SMTP id g129so5151151vsc.4
 for <openwrt-devel@lists.openwrt.org>; Fri, 19 Jun 2020 01:26:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=krkjP5ceTK4tq/ekK/QDve2uHRiZF7SBtWPyOwOOlos=;
 b=iyuUfRUGU+z2c578Ds6xxcV1DcXBa4BHSYMBYXaz19/z4zczH6WWUtEQShWxBGLVLS
 jEKYs1ZAq2ot+nE0b6epcdUsAbvV1KTOwhmMx5lK3kPN1F1BzX8se/8q/kC8k1VFz0dV
 fQ5gJ8NEqXENqiQHzK/s8PjEJl6k250CXx0ZE1uEIxIlLMilX9x/cO1BU8Aibt6jf1mM
 U6/WyWiAKhE6aPUVQwGp8iuTljzn4tt/QBxtI3cZ6whCMEKNPi8IyVZNACuk9O6xSxhL
 EwGIZp4vNIQhEeLTB/qNpcwQWYX/f7wd+AOk3b5H8yRamE13pLmlghjeZpoDZ2dK/yw7
 Pqeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=krkjP5ceTK4tq/ekK/QDve2uHRiZF7SBtWPyOwOOlos=;
 b=Jq03AIGQbvBhmj4qQyk5ScPMR8TD0W7wgNLD94JrW6HuqSf94hOCcQ8/8j4DOToNxT
 Pa3zSj3Z3Gz+T/UR+2EevSebCrNFNPVaKp6/CTh/wn9ZVN6uxUXzvwKK5MqmAaJROWV8
 vGVQQiuerYWOU9ZR+gLHrgxhyZvEnwxdFGp3rbvrKIZnFIAWiRLkmQX89VIpkd+tpa5f
 keuGad3OmwufcGXgWd7p76uEoh5xnXhSR8xemF34OBJ0NmDC+PtTHpuPW0xRgqzG1O0Z
 C0JvJILbPLR3Cr+PMBm/G3tZVaK3m4ceX0+H/5GxxSJW3BZv3R+ZLR1Af8pcZx+1HKV+
 0CYg==
X-Gm-Message-State: AOAM533QZ1Fff5ULRDcIeyQMHY2ac740AWOHWG6L7axBZARXKCJIvoAH
 UIB7w6LHS71FhglK9FKSG18+R3abtf3Whir6sA==
X-Google-Smtp-Source: ABdhPJzK9RpYPN7fYER+75RwsPEJ5bw1dT15kLu76ms7/hKslnbSF4Yw14QJhsertbi+joia3AMyMrXjAGqSH4ojx3o=
X-Received: by 2002:a67:d201:: with SMTP id y1mr6401487vsi.75.1592555190715;
 Fri, 19 Jun 2020 01:26:30 -0700 (PDT)
MIME-Version: 1.0
References: <CALjTZvbpu1Lw0j9dtXZPmVS+i-OnopUo+zuqtoQLnABQGw-SqQ@mail.gmail.com>
 <CAHmME9r3nPwmUoYYrj0PnUStd1ACSmdFAO4Qv2cZtmiLspOW1g@mail.gmail.com>
 <CALjTZvbtjVwpyV+AMX4htssTbwTHV45mQeokUr952D_GbtFPvw@mail.gmail.com>
 <CALjTZvZRerzWqaqhY2U=m44n5taLEsY99uEt2=ZNCe27=LYbLA@mail.gmail.com>
 <CAHmME9otC1mOqR2tLB55BVQQpNPvCMUGa1E4jfMYYXNp6_31BA@mail.gmail.com>
 <CALjTZvZ4wqZZ7_Fk-YHaxT9uuWnS4n9dLm4ZXSy1UM3riv+NuQ@mail.gmail.com>
 <CAHmME9qWrBTCsBr7s6oLD0zuBMzZUD2OV3s-tgDwV0W7bb9Utw@mail.gmail.com>
 <CAHmME9ozm7KiT3rkDpAF=1p_g7QU6-6fxncZB1S4tfm5v2DGqQ@mail.gmail.com>
In-Reply-To: <CAHmME9ozm7KiT3rkDpAF=1p_g7QU6-6fxncZB1S4tfm5v2DGqQ@mail.gmail.com>
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Fri, 19 Jun 2020 09:26:19 +0100
Message-ID: <CALjTZvZj=wH1w_zpF05dqi5Lnzfxwz9GpvCfix6w7GFh9Os9VQ@mail.gmail.com>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_012632_681375_B040A794 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] wireguard: unknown relocation: 102 [ARMv7
 Thumb-2]
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
 WireGuard mailing list <wireguard@lists.zx2c4.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Good morning, Jason!

On Fri, 19 Jun 2020 at 00:50, Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> Hey Rui,
>
> I fixed it! It turned out to be caused by -fvisibility=hidden undoing
> the effect of the binutils fix from a while back. Here's the patch
> that makes the problem go away:
>
> https://git.zx2c4.com/wireguard-linux-compat/commit/?id=178cdfffb99f2fd6fb4a5bfd2f9319461d93f53b
>
> This will be in the next compat release.
>
> Jason

Great detective work there too! :) I do have to wonder if this is
really a binutils/gas bug, though. From what I could gather, it's only
the kernel module loader which can't (and won't, I remember reading
somewhere they don't make sense for the kernel) resolve
R_ARM_THM_JUMP11 relocations, and using -fvisibility=hidden in a
kernel module seems to send the linker a conflicting message. Anyway,
I'd still open that bug, at least to get a definitive answer. ;)

Thanks a lot,
Rui

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
