Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE671E0E7B
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 May 2020 14:32:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S4G9/JEdtrlesVseNrqMzyK4qy6PmzqK1vwlFjGWBRM=; b=peq8YdJMh+EUxw
	9BLAakxd0924GEUa2zjNtv5JdFIZXrubOmecY1Wl2qZgLjPZCfl/gKtyZTrImwAOlBC02cTxFVtZq
	6DOPD9k0q1S3ovusyqeSV0cePdOVBH3nYirEeSit3TvKAlXInt5HvM3HTcM1T11ciEnnw7ScVXpGO
	OviTwLBD02KnNZmfc6rvp9GHWj2qBSm50LjfPyKDee4Rs6V6Y0OtW7tQv8NDyRRWlGvvt5PxnNenX
	PjjR78KaZ2E7b5i34FY/lLYdGdTRCd6JVw2UiZU0Ew/l1URgBr7TF6Guhbij+FkXwrykdTbdH3RQp
	VHoX7pOy4Y2IkYUwWL8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdCHQ-0003ct-Nq; Mon, 25 May 2020 12:32:32 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdCHG-0003bc-BH
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 12:32:25 +0000
Received: by mail-qk1-x741.google.com with SMTP id f18so522923qkh.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 May 2020 05:32:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4ZSo3CYyerqAcchJYmqpsd/3zhQpJd/rVx92vjEiAbU=;
 b=Y8j9VMUQY+0CSa5H4LBfdrtke97/zZ2t5uxrg8GmQ3I9GoDLJLtAcz3a41bW7NEzhs
 /pBB3hh1uS04AlWfCom1nUm8uyUUevvwOVMHUbZ7x8OLbZ8HUYFRDqi1ALcQYWcbSGIl
 VXn47PQu1jD757zlSNUdaqaM7SWqyCmZvFdq2vbSPP6SYf5S9WZKRh1w4hKu+5m6pNmF
 2eF94C0h8Ps6OPAvBtLikdagyjB46Z0OHI2T60yv8bq2JOZFw+AtO6h6gxDoi9heU4tJ
 FKkG4NU0n2D9tcRIRsfXWkHWdCIAK57LkX98J9CRug4OKggt+lU7OKEJiR+X30kX8qid
 YqAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4ZSo3CYyerqAcchJYmqpsd/3zhQpJd/rVx92vjEiAbU=;
 b=GRbqEYXlJRHaaVbI99w4g6u+MvaKkZh13meaLE92n2P7A1dDJye231eAhGS9AwoYPS
 5VTdDYzXIj+N8iSITG5H9opSNSFJ5ed2oCY+LmX02tx/iA6a9pfmN7u3hF3cPJxs408A
 72QwCjFAWQkm82LBQts2pNyRI/3TAbk5qDTiLKg5CKECb/Vfz29+Ca0Ci3sZw3Yr22lf
 kK7evu4f5PxgXkkjUhw0o7wh4rV6kYvHMexbFvzjgkOoVHXd3gCjsAmsuPUVgvt0j6ZV
 1HpYbKVB4onYbhlVWejJBM9GpuRAJp6fEroobz7vmIZT2ZbHwsz5bionKC4AxefyOsKK
 1WSw==
X-Gm-Message-State: AOAM533DnmaINU/kJrybzmxkY2dUzu9FgvrH+I5faVQytnYZgtY8rufs
 uYMvA4eVGPTFQA5CafJvSh9AfhOji3fwtxOIIotahQ==
X-Google-Smtp-Source: ABdhPJzeS19VISOtKexCPUiTy76XVtJnhSnC4tHpwE8Sj8r+wGiUCeEmofTM71Z9qaOGI9AIdnIKy7S3T2X+EQQp0pc=
X-Received: by 2002:a37:49cb:: with SMTP id w194mr27621984qka.40.1590409941062; 
 Mon, 25 May 2020 05:32:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200525001956.9485-1-cotequeiroz@gmail.com>
 <9c6dbf82-ba30-ff8a-4cb8-1a95da5da0dd@nbd.name>
In-Reply-To: <9c6dbf82-ba30-ff8a-4cb8-1a95da5da0dd@nbd.name>
From: Eneas Queiroz <cotequeiroz@gmail.com>
Date: Mon, 25 May 2020 09:32:09 -0300
Message-ID: <CAPxccB3EoYmGe-iaJfPhgj_kNhjTTMa_A7Xo6brMrE_KCr_uoA@mail.gmail.com>
To: Felix Fietkau <nbd@nbd.name>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_053222_404407_31AA4F54 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] build: always use -minterlink-mips16 if
 USE_MIPS16
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Mon, May 25, 2020 at 5:06 AM Felix Fietkau <nbd@nbd.name> wrote:
>
> On 2020-05-25 02:19, Eneas U de Queiroz wrote:
> > Individual packages may turn off MIPS16 ISA individually with
> > PKG_USE_MIPS16.  However, they may link to a library compiled with
> > MIPS16.  In such cases, the -minterlink-mips16 is needed to ensure there
> > are no direct jumps to code compiled with a different ISA.
> >
> > Instead of adding -minterlink-mips16 only when PKG_USE_MIPS16 is on, add
> > it when global USE_MIPS16 is on.
> >
> > Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
> > ---
> > Tested by compiling all packages in base, packages, routing and
> > telephony feeds for mips_74kc, with MIPS16 enabled.
> >
> > This was discovered while working on lxc fixes
> > (https://github.com/openwrt/packages/pull/12241), where compilation with
> > mips16 would fail because of '-fstack-check=specific not implemented for
> > MIPS16', and it would fail with PKG_USE_MIPS16=0 because of jumping to a
> > different ISA mode:
> >
> > lxc-4.0.2/src/lxc/caps.c:24:(.text+0xa4): unsupported jump between ISA
> > modes; consider recompiling with interlinking enabled
> >
> > In theory this could happen in more places, so set interlinking on
> > whenever MIPS16 is turned on globally.
> I think there needs be a way to opt-out of this behavior.
> The -minterlink-mips16 flag affects the performance and code size of
> generated code, so libraries that disable MIPS16 for performance reasons
> and don't depend on other MIPS16 enabled libraries should not be
> compiled with this flag.
>
> - Felix

Let's leave it as is, then.  Right now this failure appears to be an
exception, not a rule.  Packages can opt-in by adding the
-minterlink-mips16 flag themselves, as was done with lxc.

Eneas

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
