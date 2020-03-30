Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 941911972CF
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Mar 2020 05:32:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ozi0sOahezEdVARTEZ4x5v2BaduNZOvkcxLMV/GyFds=; b=l7ICnZ3IZMq5/2
	ZtZpJ6Hbo+yaMWi3+p7JyyLhKGVvEYhAF3XZkyrZielBK+FPMaAZeTHxkDocLGzMJqlAMWbqJ9dnq
	o3828PsFIWrQdcGhhpWBUYgttIwtCr2hR+ZMRGyo6t5UBXYxpp8DwNZN8P79+M+3RyJniNZ67XVMj
	nD2U6KG4/qOWR3uHX098/doQSU8cGu1Q3a5tJKymTS2zblz5ZeElZQGmIM8sxleZcN/h5Hmp9iZJG
	pJia6buajsdtWUnMirpVMyqelKaNIlWBBi2+kU23sFy1YloRhpO53eAomlI1WdkBqDt0KxFqiR1ML
	Y2HfA4oL3VzTvFZ681Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIlA6-0001DK-43; Mon, 30 Mar 2020 03:32:30 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIlA1-0001Cy-84
 for openwrt-devel@lists.openwrt.org; Mon, 30 Mar 2020 03:32:26 +0000
Received: by mail-lj1-x241.google.com with SMTP id p10so16298687ljn.1
 for <openwrt-devel@lists.openwrt.org>; Sun, 29 Mar 2020 20:32:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CNjKxaExXjshNXJyIeQXAFUnYfprr4pnSM8PPT+p6yQ=;
 b=J940evE/gsnS/giopnosSIadyeH+lduBUB2RL+RwWtKOI5trEPNyA8xxfdFkoU0QMg
 TsWqCCqh5WeI6AF5zmR8l6O8wQeu2dh8hc+6TXUCJMwEKpYDyBWSJgRXnsPGt2lYcwGm
 PLbmL5WUKfq5gIdALHFpeCxoqRdR7iEddB1Dw9paE84zxuDFS3AhD/560/ajdcjR5CZ/
 6pBg8Sjl2IgfkS7C1LgcT6+oLnUwiG3pETvTvrwet+6pLlqKhoTwGkWfupR1KbVi1vJ5
 KDbJQMwSwOPEC6jGbtJiTtjYpfRk8sWkuJxmXXNcH8Fq63EuMyTSKyvBf3tiV+YGtxn9
 pMHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CNjKxaExXjshNXJyIeQXAFUnYfprr4pnSM8PPT+p6yQ=;
 b=Na/hfAi14zEPybqpTeNINxSOOCKLVqaP17cPdCghJqNzKyJOi4kdLE0/ef9TkStw5R
 Bl85N7SPlLBnEYOCmtibcJKnMg7U3sohLfanY55Mr2/UcBnWqIRRZaxkK0QVboI0DVUF
 lTk/+BaivAHHFKWhthrxRuCYyjeJXFNRttYOZn2vLTwllTMYxwd9k254erjzkqq8H5Vk
 VYf3eihVtDxVOVo2BEvg4kZu/hmzm6lCOFAZ0uhaH7mN7L/emK79QthKSesS4lE+qYaE
 hSvD6eQxQemBR8j7zOmOcVNnOf6JQWR5iJK12m3dAzRaef/gBbINwt9JEmgnKJHlZ7BN
 SejQ==
X-Gm-Message-State: AGi0PuZ4xJD1LpGwi2DLsICb1GlKWVRhVv5tq72C+O4K1SdJ1EkuFG0l
 oNNMj36WtfYXL3UmTDDSoa4LmcwiJVjNiUmELu0=
X-Google-Smtp-Source: APiQypL7tXcjmMGzxFbdTJhcya8hqM482A6pB5px0Kg9qBb5phaVbO0akX+FobOW4asvK6ZjDaNKmAMEkZ8s2sV3hXo=
X-Received: by 2002:a2e:b8c1:: with SMTP id s1mr6253950ljp.0.1585539141168;
 Sun, 29 Mar 2020 20:32:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200327042801.61504-1-yszhou4tech@gmail.com>
 <b9f39fc1-be09-da75-125b-9897dd971df4@hauke-m.de>
 <CAKxU2N-mfyFF2BM9UpC-1Z_FJBVg54QMzBzYXp9SeVS4vfFW6g@mail.gmail.com>
In-Reply-To: <CAKxU2N-mfyFF2BM9UpC-1Z_FJBVg54QMzBzYXp9SeVS4vfFW6g@mail.gmail.com>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Mon, 30 Mar 2020 11:32:09 +0800
Message-ID: <CAECwjAgkTYsLzyJnVjRMfAf5DETYZ3O2vYE_ehJRtTHhwYohbg@mail.gmail.com>
To: Rosen Penev <rosenp@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_203225_315055_2DB72F88 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yszhou4tech[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] generic: mips: exclude more dsemul code
 when fpu-emu is not enabled
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Mon, 30 Mar 2020 at 07:17, Rosen Penev <rosenp@gmail.com> wrote:
>
> On Sun, Mar 29, 2020 at 8:34 AM Hauke Mehrtens <hauke@hauke-m.de> wrote:
> >
> > On 3/27/20 5:28 AM, Yousong Zhou wrote:
> > > The patch is backported from mips-next.  In addition to minor reduction
> > > of code size and runtime memory use, the more apparent difference is
> > > that the delay slot emulation page will not be present for those targets
> > > with fpu emulation disabled (CONFIG_MIPS_FP_SUPPORT=n)
> > >
> > > Memory maps of busybox before and after this change
> > >
> > >   root@OpenWrt:/# cat /proc/self/maps
> > >   00400000-00449000 r-xp 00000000 00:02 23         /bin/busybox
> > >   00458000-00459000 r-xp 00048000 00:02 23         /bin/busybox
> > >   00459000-0045a000 rwxp 00049000 00:02 23         /bin/busybox
> > >   77dc0000-77de2000 r-xp 00000000 00:02 273        /lib/libgcc_s.so.1
> > >   77de2000-77de3000 r-xp 00012000 00:02 273        /lib/libgcc_s.so.1
> > >   77de3000-77de4000 rwxp 00013000 00:02 273        /lib/libgcc_s.so.1
> > >   77de4000-77e7b000 r-xp 00000000 00:02 271        /lib/libc.so
> > >   77e8a000-77e8c000 rwxp 00096000 00:02 271        /lib/libc.so
> > >   77e8c000-77e8e000 rwxp 00000000 00:00 0
> > >   7fd86000-7fda7000 rw-p 00000000 00:00 0          [stack]
> > >   7fefd000-7fefe000 r-xp 00000000 00:00 0
> > >   7ffe6000-7ffe7000 r--p 00000000 00:00 0          [vvar]
> > >   7ffe7000-7ffe8000 r-xp 00000000 00:00 0          [vdso]
> > >
> > >   root@OpenWrt:/# cat /proc/self/maps
> > >   00400000-00449000 r-xp 00000000 00:02 23         /bin/busybox
> > >   00458000-00459000 r-xp 00048000 00:02 23         /bin/busybox
> > >   00459000-0045a000 rwxp 00049000 00:02 23         /bin/busybox
> > >   77d55000-77d77000 r-xp 00000000 00:02 274        /lib/libgcc_s.so.1
> > >   77d77000-77d78000 r-xp 00012000 00:02 274        /lib/libgcc_s.so.1
> > >   77d78000-77d79000 rwxp 00013000 00:02 274        /lib/libgcc_s.so.1
> > >   77d79000-77e10000 r-xp 00000000 00:02 272        /lib/libc.so
> > >   77e1f000-77e21000 rwxp 00096000 00:02 272        /lib/libc.so
> > >   77e21000-77e23000 rwxp 00000000 00:00 0
> > >   7fe23000-7fe44000 rw-p 00000000 00:00 0          [stack]
> > >   7ff63000-7ff64000 r--p 00000000 00:00 0          [vvar]
> > >   7ff64000-7ff65000 r-xp 00000000 00:00 0          [vdso]
> > >
> > > Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
> >
> > Acked-by: Hauke Mehrtens <hauke@hauke-m.de>
> Acked-by: Rosen Penev <rosenp@gmail.com>
>
> I have the previous version of this patch (taken from ldir's tree) in
> my tree. Works great. Have not seen any problems.
> >

Applied to master branch.  Thanks

Regards,
                yousong

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
