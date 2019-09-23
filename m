Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E84FBBBB9
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Sep 2019 20:40:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5oZve4ScLc7L87WQNwbCWwpQUhwhRuR/wCy3q7x4JFU=; b=NopmdtdKWIwR8b
	JIzYKUO6R0GAsAzCnFb3O/sbZpsCvIy8GtxSpO24l9cwqdUfMgozqEr4x7GQaNh5g8BhWKbFTErvR
	BU+8nkdgSFBV+keQCv9odVr4FruEkWvmu6GiP6xdRec5SgwnWXPZZxM3fTHTK51z7VDTsHlGtGh1c
	MKEw1er7JGOs36qfzR86ewneIpnyPvxJhsWxpiRyxkaVk7plGEu+zvtYMMdT0/NJVgncLH6n/TvWS
	MZpJRCl9/SPdd9JF3so2kw9MfUatFctPG8UMsASD3E6feiVQONrm0NjZ/FMOKCme97C/HhS+izWDq
	RdSAG/4Yy0SGPzX25xJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCTFw-0007Gp-3v; Mon, 23 Sep 2019 18:40:16 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCTFn-0006Xa-6e
 for openwrt-devel@lists.openwrt.org; Mon, 23 Sep 2019 18:40:08 +0000
Received: by mail-oi1-x242.google.com with SMTP id x3so8522010oig.2
 for <openwrt-devel@lists.openwrt.org>; Mon, 23 Sep 2019 11:40:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GopDfqv/Dygku2F7ilFnqHUF7pRZG842L5iB4ahcPjw=;
 b=G9pLsoqEyxAUJZ/vZfA9o1HQV9iH1TTY1dXtkfefQr9PZ6WzY3ReU2dbi6dDUczK6p
 W26fSAl87Q9d5EdR4j6NBltOue24RsQ4nPajIVjbrBisjp87lI2oTeBdz2UiOuQdaM8z
 14S+fcwb36jfi0x0od+jdFAYn2AkBrD5kxck24S9w8vWSL2WvEFBPh4sMDVB+OgWW6YA
 B+KFSM9a+yc4kK14SFR06Ts8l9uCjt6lt6Z+WiCvtq/++KaW3jcoZAdkjhp2JRyKJWuA
 XHXHqrdyMoaSIelV29i9BT/tdO3x3VKaCDf/wUG4Ry9sBHTPuh6Z+WDFIkDu/Vrr4s1E
 Mbog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GopDfqv/Dygku2F7ilFnqHUF7pRZG842L5iB4ahcPjw=;
 b=QCAsbQbqJzef7f8thFd6EV1Ifv5lq92pzNaeWE8QamMnzZ6pnAjlGmjGQciMjkv/jG
 tfaCevCabe0ndYiGTGFFW1YfhcnZ5K0eQE56uxtg+KvabZjC08O9YGmJZTe9eyzkZNZ8
 ciu7/Rph5nQm4Qv3a/XdecC2aTHACBRUSi6qCNGGtasGkoBFkRRLRnrIzVanVhy4lMX8
 iM0AKL65lWrziVgVSkrICSVIjL/51Y3ZFS/7OCH0Oac/G1enlAZJcg5VuCgemFB/FhyS
 YZVfx8spZ5I7lyHcIP57yb3C3MH8zJSYuM7RbdkORb8zgfpj/G4KIZx4HFIAEKHoz0K0
 Zvlg==
X-Gm-Message-State: APjAAAXcY3sUbbbC9T05ZJt7kL1/e149G/dvYVek29TBFAhAoRA2TjIK
 REzc2U3zm7XWNSKxj32dMNWOY9sfkdcgjS8JCu0=
X-Google-Smtp-Source: APXvYqxdjVO+IykK9/uh80qgJEJrVQR3y4ClFlDbztmrt8U5YcuVG+chRlun8FTnmxPdO+m4E6OMclGlxiooH+PhDRA=
X-Received: by 2002:aca:fcc2:: with SMTP id a185mr1280580oii.43.1569264003541; 
 Mon, 23 Sep 2019 11:40:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190920204804.10183-1-cotequeiroz@gmail.com>
 <CAPxccB13Fjqbob=cLYnJS8UbJUOFtqoFOJQif0jvAy1qUMhyCA@mail.gmail.com>
In-Reply-To: <CAPxccB13Fjqbob=cLYnJS8UbJUOFtqoFOJQif0jvAy1qUMhyCA@mail.gmail.com>
From: Christian Lamparter <chunkeey@gmail.com>
Date: Mon, 23 Sep 2019 20:39:49 +0200
Message-ID: <CAAd0S9C11Uqng-UCA6U56DWsEXTb32XKhVsp9AzU9mhb-4t0rg@mail.gmail.com>
To: Eneas Queiroz <cotequeiroz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_114007_277395_08B96AB1 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] kernel: fix hw-crypto detection of qce
 driver
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
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Mon, Sep 23, 2019 at 2:28 PM Eneas Queiroz <cotequeiroz@gmail.com> wrote:
>
> On Fri, Sep 20, 2019 at 5:48 PM Eneas U de Queiroz
> <cotequeiroz@gmail.com> wrote:
> >
> > This adds the CRYPTO_ALG_KERN_DRIVER_ONLY flag to Qualcomm crypto engine
> > driver algorithms, so that openssl devcrypto can recognize them as
> > hardware-accelerated.
> >
> > Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
>
> I noticed this was moved to ipq40xx, but ipq806x is also enabling the
> qce driver:
> https://git.openwrt.org/?p=openwrt/openwrt.git;a=blob;f=target/linux/ipq806x/config-4.14#l119
>
> So I imagine we need to either copy the patch to ipq806x, or disable
> the qce driver in ipq806x/config-4.14.  I don't have enough knowledge
> to decide what to do, so can someone more knowledgeable, please,
> either do it or point me to the right direction.

The upstream qce crypto driver does not support the IPQ806x series.
The ipq806x target used to host ipq40xx, so this driver was enabled as
builtin back then.
But since ipq40xx moved out, it's has become a symbol of "hope"....
That maybe some day
the NSS support of the IPQ806x can make use of it....

So yeah, if you want to crush the hopes and dreams of the IPQ806X users,
you can disable/remove the driver for the ipq806x target.

Regards,
Christian

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
