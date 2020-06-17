Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C9F1FCE42
	for <lists+openwrt-devel@lfdr.de>; Wed, 17 Jun 2020 15:19:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vw7uoGLEQcUn9i6HWVrTtzv1F/EZeI8OyMfq5+okFJ8=; b=TXhc5c3/dBnDyw
	HglSxwq32sDkeWc0c5lghAoxkCjdQGnlYZBLbRs+XoN2sKufqlmK3heK5Pned61TxSTksNG09M8ds
	MUUMfZTBrXrGgR1Hi3lR5np623ffxmtdHfWNW4c3xwYOZcvFoixwEoSxVqCHF+erJ/tL7BNnTOfyi
	4NXTUzwp1w5ELCvpWrOe+3ewZYkhcMUf2oEDPb3CjojB5uCxxKElHBK6KFIMMxfnvI2H8qSI9b66S
	8PjFABWOvayfxqBIOFNFUpxF9pfnzb36GKFmq/XvDlA4UmuFXYz3Dgxe1xjLtYRwvvZTwQ/Yo0zMc
	KehL/UZli8g3D+OXrPWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlXye-0007Vq-IS; Wed, 17 Jun 2020 13:19:40 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlXyR-0007VX-RU
 for openwrt-devel@lists.openwrt.org; Wed, 17 Jun 2020 13:19:29 +0000
Received: by mail-vs1-xe42.google.com with SMTP id o15so1324142vsp.12
 for <openwrt-devel@lists.openwrt.org>; Wed, 17 Jun 2020 06:19:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3koFRDW5k8e8wrNq/FQ4qgh4HNpO7KQJ85QX63GLaj4=;
 b=k81CtPxyCX8uH7L6YHHRFkK3bmhUKM3VZ8xxxwKcUf/qJ32So6kUo8VCiYKg+jcHVY
 nVdt38rno2VhXyjoG5IuiAUECMNYS2zhL/CVja2tAZP2y7I0HCG2xh3V1fgfOUREid4q
 cwS8g+3E2rboVXaaIffhqoukNwUykZ3EoKe9aR/JF+NozNZtRxti0AwZTsqJ0pW/Mj+O
 FE8Iz4Y98Xz1f7zDUNzub2s37/QybB3FF3DP7rDpSNvtF4f2c9U7tJ1drTR07/GAnqmb
 IOtAp0ddsr/vgfUcIk2Kgx3BRSre4Byx7lRZlu9fXGRQDLycI17v0UErGPTTtOjeuT4F
 Iqpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3koFRDW5k8e8wrNq/FQ4qgh4HNpO7KQJ85QX63GLaj4=;
 b=t8v9+8XOOkFMfm9CDvhVhrhfz5ylJmTRJGJ9tmJMT4uH3EWG3Qo4rECRwOS6wLJab8
 P/8MRQWQdKFN0umpVAh2tSMHtbU+e8/PKfVaZ22F3pkhcSt3L+jwt4cTs/fJnfJ5wa4r
 lKZES83Y1bAXJXOLNVO/bm60JgFqRWqhXkl8uSoQaiH/59nKJ72vJIZaP2GJzde0o/aY
 +XbaQpgQKz5eIrxDV4KP8U7cCFZ0xaqSaAf4yf6HgEOAC3cjP5l3bIMJmXJBD+1Nu9x/
 jQQjM2JyXC6+1K5ehsopbmUxOCZzAXOQzb83g0WZXFeheAzno9yJjce4K1Pifu9nQwfl
 s5Ww==
X-Gm-Message-State: AOAM531qWh55sSkrfU4N/G6WT2HRuO7LjZEjKVneaXLBtm8TTrEQojN9
 NDogjjKtG8ZkhqvDAJvCi/tIaW1tIocn7cjCVw==
X-Google-Smtp-Source: ABdhPJyJvGx7q6hRky3Mafk9/hzCaaonEAqi8mzA/qHIv9C1fDByqB6c8UasEtXUN8B8GBwxt+9jAhQZ7GwgO1OwKyY=
X-Received: by 2002:a05:6102:2408:: with SMTP id
 j8mr6022738vsi.45.1592399965339; 
 Wed, 17 Jun 2020 06:19:25 -0700 (PDT)
MIME-Version: 1.0
References: <CALjTZvbpu1Lw0j9dtXZPmVS+i-OnopUo+zuqtoQLnABQGw-SqQ@mail.gmail.com>
 <CAHmME9r3nPwmUoYYrj0PnUStd1ACSmdFAO4Qv2cZtmiLspOW1g@mail.gmail.com>
 <CALjTZvbtjVwpyV+AMX4htssTbwTHV45mQeokUr952D_GbtFPvw@mail.gmail.com>
 <CALjTZvZRerzWqaqhY2U=m44n5taLEsY99uEt2=ZNCe27=LYbLA@mail.gmail.com>
 <CAHmME9otC1mOqR2tLB55BVQQpNPvCMUGa1E4jfMYYXNp6_31BA@mail.gmail.com>
In-Reply-To: <CAHmME9otC1mOqR2tLB55BVQQpNPvCMUGa1E4jfMYYXNp6_31BA@mail.gmail.com>
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Wed, 17 Jun 2020 14:19:13 +0100
Message-ID: <CALjTZvZ4wqZZ7_Fk-YHaxT9uuWnS4n9dLm4ZXSy1UM3riv+NuQ@mail.gmail.com>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_061927_910881_EB1FCF9D 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi again, Jason,

On Wed, 10 Jun 2020 at 11:09, Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> Eventually I can probably get this building and testing and find some
> hardware for this and such. But if you'd like things to move faster,
> trying to reproduce the issue in the qemu test suite will result in a
> quicker fix.

After a bit more digging [1], I believe I've narrowed it down.
CONFIG_THUMB2_AVOID_R_ARM_THM_JUMP11=y is required in order to avoid
the emission of R_ARM_THM_JUMP11 relocations in the WireGuard module.
I'm now wondering why the compat modules haven't exhibited the same
problem (maybe it was just a fluke), but since this kconfig option
effectively implies -fno-optimize-sibling-calls [2], it's quite a
hefty hammer. Is this something that can be solved in the WireGuard
build itself?

Thanks in advance,
Rui

[1] https://github.com/openwrt/openwrt/pull/3079#issuecomment-645297337
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/arch/arm/Makefile?h=linux-5.4.y#n125

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
