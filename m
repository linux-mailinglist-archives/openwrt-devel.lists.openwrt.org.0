Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF3EED828
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 Nov 2019 05:02:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qU2Xu96mYVSrlazYHNB31bhp5rePid7lCVMVLFunUKw=; b=nqyoquG0j8s0Ev
	8FG+Alh//Hcf/ssVmBp0+MY4J7AsfFFjPBbPrby7Q+MWs9xhITLeZCIGvl+rVUNkvKcnB8UTFHcU/
	m1Mg8EJlBNryUilKKIkl24GPO5VbqDrttCxykK8tyyDGHfWrpHhSW5F2PDFrTrA5wEzq1HT0Jo+I9
	aGavrdq3Zk2+4cv8xMzi0pKqUHZOIjMlBji5+ksuEWgiAzksJ9cl2uFw5amOOhudG6LGewl6fMq5R
	S/c6on7XSOPSeTLCVYFi4gToxRidI+sct2OsfG77I7FaBxZzLHfyTS8L1T9oInmBz0ku2tAaSCFa3
	TTwMFyZTJT9xRqX+jL1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRTZU-0000GE-AS; Mon, 04 Nov 2019 04:02:28 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRTZM-0000Fn-T9
 for openwrt-devel@lists.openwrt.org; Mon, 04 Nov 2019 04:02:22 +0000
Received: by mail-lj1-x243.google.com with SMTP id y23so5064851ljh.10
 for <openwrt-devel@lists.openwrt.org>; Sun, 03 Nov 2019 20:02:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1FzWEDOZsio3PyBQndZv2E7yQmsJm28aryAa1HD54aM=;
 b=oVp1YOqay7CAJDMtO+JZslHoECzGZ6c9kYScr9HstB/1kRtX7dIH/OH9eW9ntB2VpZ
 8RfeMOBesu4ig7/TIhYWpT1cIHbbEo5ROp80JOUoh8g0sWIYIhwuhW5rD4DEIAh4GNZ/
 MkYItUnpJKrRhTpF96DlJC3DN86bOmU0XkfKWeksQom5ftf3E5v6WUIxCTrG7bCTgCEo
 nSA8dbvAC31ZgFHI2lFkocB+8iZA+LsyqImzb4Z7wRYcvdt0vFxJzqQFSWRkHoLs2ViH
 CAWrsmyrD1vgsI/3cLn8jQb4j/87+cUfV3xicFTEfzQvHPl3I8oggmE1omyIHCv4n8Ua
 KE1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1FzWEDOZsio3PyBQndZv2E7yQmsJm28aryAa1HD54aM=;
 b=i+RFY8/BbH2IhzV0JdbAx5Z6g6J/KbefylpejSMpu92eCN/3OKUEbEL7CJHxhfGixV
 p/pqRdh2kgZQ/IwmH2kSKTZ0WvRhtK3LATD6B5eUAp73ox7viDg0ZgP8+DGc0mDZC2WG
 WSRwqdjyqskW6izgg5iMTWXf0gKN9+GBlz0wktm4gY9k65+mNWpTC5lpCiQDGTtNkmAx
 FbAb/dzEyffHI3/DjdSZw+jaLbqpAV4In5R5/6+oVdDu7qv7GXePxsdgMGhzhVyYsfBK
 2CW9vB+azSXnc11Z+0iFjfSzLPiPAJm+IHKE/tLY/7Msf6yT/viEezP7TLl4eb6uz/Ox
 YOgg==
X-Gm-Message-State: APjAAAVSqMxq/f5hbeMspwPfWfCW8fn00KFHkra/hRvUa5FBXBpiaAMx
 qcVmNbNoyaF0cJyikPljrReme2jYoQagb2qvKx8=
X-Google-Smtp-Source: APXvYqycPXSHuLr68U/Dhf76pM5y1NnCuvPYw5jX4GUJV5zoDstehb7ymxhVt4vNfxRhm1lp74BPx0JHvj16+8v5UnQ=
X-Received: by 2002:a05:651c:387:: with SMTP id
 e7mr17357180ljp.0.1572840139013; 
 Sun, 03 Nov 2019 20:02:19 -0800 (PST)
MIME-Version: 1.0
References: <20191103234617.1972-1-mail@aparcar.org>
In-Reply-To: <20191103234617.1972-1-mail@aparcar.org>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Mon, 4 Nov 2019 12:02:07 +0800
Message-ID: <CAECwjAjN=VeqgNMuAzGYzn5ZsXZz-672H9Tpqb27zfgBPjf9Lw@mail.gmail.com>
To: Paul Spooren <mail@aparcar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_200220_965342_913E937A 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] x86: generate reproducible UUID
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

On Mon, 4 Nov 2019 at 07:47, Paul Spooren <mail@aparcar.org> wrote:
>
> This commit changes the behaviour of UUID generation. Instead of using
> the rand module of perl, generating a random UUID per compile, it now
> hashes the SOURCE_DATE_EPOCH, resulting in a reproducible UUID.
>
> Signed-off-by: Paul Spooren <mail@aparcar.org>
> ---
>  target/linux/x86/image/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/target/linux/x86/image/Makefile b/target/linux/x86/image/Makefile
> index ac70e771c8..68c2bee9d4 100644
> --- a/target/linux/x86/image/Makefile
> +++ b/target/linux/x86/image/Makefile
> @@ -40,7 +40,7 @@ ifneq ($(GRUB_TERMINALS),)
>    GRUB_TERMINAL_CONFIG := terminal_input $(GRUB_TERMINALS); terminal_output $(GRUB_TERMINALS)
>  endif
>
> -SIGNATURE:=$(shell perl -e 'printf("%08x", rand(0xFFFFFFFF))')
> +SIGNATURE:=$(shell echo "$(SOURCE_DATE_EPOCH)" | sha256sum | cut -c 1-8 -z)

Maybe just unify with other targets should be enough.  Note that "-z"
is not supported by coreutils-8.22 cut on CentOS 7

target/linux/tegra/image/Makefile
10:SIGNATURE:=$(shell printf "%.8s" $(SOURCE_DATE_EPOCH))

target/linux/x86/image/Makefile
43:SIGNATURE:=$(shell perl -e 'printf("%08x", rand(0xFFFFFFFF))')

target/linux/mvebu/image/Makefile
16:SIGNATURE:=$(shell printf "%.8s" $(SOURCE_DATE_EPOCH))

Regards,
               yousong

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
