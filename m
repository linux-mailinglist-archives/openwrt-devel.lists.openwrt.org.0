Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 453A81F51EA
	for <lists+openwrt-devel@lfdr.de>; Wed, 10 Jun 2020 12:10:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M2tZm9Cpi5RRTHS2sojc78h/U+Thdz0HV9tE+zfdhUo=; b=gYSwqqzNwqK8m5
	VLqe6nKxZ1k/GxBnQdw+fbmUdhWu1jipvpbrpj0ADbXAzEY9Hzs8L4jlOBB9j2ukdcxkQ4G81NQ1h
	4DpNsNlbRt7CEPlQCiU8BAMsKc6wC51TMpvri7ayG5qkChoipDczq1lcN+7saFSdZx6U+fyXlAOWL
	NrKSIax648+7g0b6qsUspI33kzMASaCJfQ5nGNdWjeDxg8IOPDI4y+2BnvZlFxQO3eoN9dXbU22Ln
	KJ9XoDBkHGGRqE8sWqt+Nz/oTMOvlfWNadq4Bj9gAi9esqq2rUSZ721zDYYIUXiqRBptP7RtOSj0R
	vhirHHk+/JeqQ/IcR6SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jixgN-0001Tf-Aw; Wed, 10 Jun 2020 10:10:07 +0000
Received: from mail.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jixgB-0001T0-Jf
 for openwrt-devel@lists.openwrt.org; Wed, 10 Jun 2020 10:09:56 +0000
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 6685f841
 for <openwrt-devel@lists.openwrt.org>;
 Wed, 10 Jun 2020 09:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
 :references:in-reply-to:from:date:message-id:subject:to:cc
 :content-type; s=mail; bh=fkcMinVoYJBVEqsB65lOWRjRjXo=; b=UJg3RA
 jrBpo/WhTotPoK1/laqGJyTmYypm+oM5tzr42fnTi0/VZAeGQk2Zo2/gtLHrSJSY
 IWDIS2DVsxkSv5EJmkJYAiFFdoGF1i+Hhv5L7JD+fA3YLj4Q1zvvSDyWBcIP4l2K
 WhIO6cMzfl9DcNi9BffvprpWY1PwqxZbl03bCP6/z4ql0n6typUaLbIhAoddsAzq
 TesdQ9NY65e9aS88S1w47G46jY5K/A116EP0Zf14Hqv2Ip9tIkDCX693QijC8llE
 2L0lIz0LIqqgetEWUhRNnF7g2Te5UFSPHCFYnPCPb2Nb0UL7i//I+BFqdO9bWsj0
 keH5MQkmBcRKYfFw==
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 0492e74e
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
 for <openwrt-devel@lists.openwrt.org>;
 Wed, 10 Jun 2020 09:52:43 +0000 (UTC)
Received: by mail-il1-f180.google.com with SMTP id 9so1293325ilg.12
 for <openwrt-devel@lists.openwrt.org>; Wed, 10 Jun 2020 03:09:54 -0700 (PDT)
X-Gm-Message-State: AOAM531V9Gwq0HJpDCU4xqmQGtWtWYjqXqh+9jTVEFzKtVntzb/4fywh
 gPOlLflQvH8VAMmfP8m/DZuO4O1CkNeqg6xGJbk=
X-Google-Smtp-Source: ABdhPJzkKLiRddi8HRrOGOlBmDbLUOoxYMJVkuBSGG6IaIXyW6UFyVJZPnrR5Fxpf6ERXyjZz1JmMYvrVzvzxf++0Sw=
X-Received: by 2002:a92:2515:: with SMTP id l21mr2202183ill.64.1591783793927; 
 Wed, 10 Jun 2020 03:09:53 -0700 (PDT)
MIME-Version: 1.0
References: <CALjTZvbpu1Lw0j9dtXZPmVS+i-OnopUo+zuqtoQLnABQGw-SqQ@mail.gmail.com>
 <CAHmME9r3nPwmUoYYrj0PnUStd1ACSmdFAO4Qv2cZtmiLspOW1g@mail.gmail.com>
 <CALjTZvbtjVwpyV+AMX4htssTbwTHV45mQeokUr952D_GbtFPvw@mail.gmail.com>
 <CALjTZvZRerzWqaqhY2U=m44n5taLEsY99uEt2=ZNCe27=LYbLA@mail.gmail.com>
In-Reply-To: <CALjTZvZRerzWqaqhY2U=m44n5taLEsY99uEt2=ZNCe27=LYbLA@mail.gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Wed, 10 Jun 2020 04:09:43 -0600
X-Gmail-Original-Message-ID: <CAHmME9otC1mOqR2tLB55BVQQpNPvCMUGa1E4jfMYYXNp6_31BA@mail.gmail.com>
Message-ID: <CAHmME9otC1mOqR2tLB55BVQQpNPvCMUGa1E4jfMYYXNp6_31BA@mail.gmail.com>
To: Rui Salvaterra <rsalvaterra@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_030955_789744_EB7D5498 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Wed, Jun 10, 2020 at 4:05 AM Rui Salvaterra <rsalvaterra@gmail.com> wrote:
>
> Hi, Jason,
>
> On Wed, 10 Jun 2020 at 10:31, Rui Salvaterra <rsalvaterra@gmail.com> wrote:
> >
> > Good question. :) You're testing in QEMU (which I personally never
> > used), right? I don't know how familiar you are with OpenWrt, but I
> > can surely send you my configuration (it's spread across multiple
> > files, though).
>
> Ok, so this is what I do (on a pristine tree, after cloning the
> buildroot and the packages feed):
>
> First, I change the CPU subtype to neon (sadly, the Armada 385 is
> castrated upstream since the 370 only supports VFPv3-D16 :/).
>
> diff --git a/target/linux/mvebu/cortexa9/target.mk
> b/target/linux/mvebu/cortexa9/target.mk
> index cdd4d86e49..9af3c95d7b 100644
> --- a/target/linux/mvebu/cortexa9/target.mk
> +++ b/target/linux/mvebu/cortexa9/target.mk
> @@ -10,5 +10,5 @@ include $(TOPDIR)/rules.mk
>  ARCH:=arm
>  BOARDNAME:=Marvell Armada 37x/38x/XP
>  CPU_TYPE:=cortex-a9
> -CPU_SUBTYPE:=vfpv3-d16
> +CPU_SUBTYPE:=neon
>  KERNELNAME:=zImage dtbs
>
> Then, I use the attached configuration files. The .config (for
> OpenWrt) in the buildroot, and config-default (for the kernel itself)
> in target/linux/mvebu/cortexa9/.
>
> Let me know if you need anything else!

Eventually I can probably get this building and testing and find some
hardware for this and such. But if you'd like things to move faster,
trying to reproduce the issue in the qemu test suite will result in a
quicker fix.

Jason

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
