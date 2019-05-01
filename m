Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 814C910EEA
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 May 2019 00:08:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=w90FYSPonZhv3XImcAcWgPBcTqj9FZ5QY8yTejx+Bsc=; b=C0V
	5IbbwUYAqEh6hnZCAP64Jfw2iu6WOoh4GkmIa7ci9tN22vO826QchoTlhfzGUHBLw6M0s/v9tG36p
	yhgrv/MRoSyo3RMC+V1Y9DFofk63UydQS0cAkI7IzztUMLp4dsoG4SLh0bHQYNInWDkHgeEdLCAbV
	oBcTTQuWWgSFHNYrGTj5VrWDbEte2dfFv+Ce3UIi+IIR1eE9pqpTd2SZf4zyuddirq8cBh6TsV86+
	cdCgrIbZLhepRRc830dAh5fMp5KiTYMuDxbSrTmLvtah86UhOWhyv06JiIQqDdftYlALLjXFmpsJQ
	7QagqpS3KGSSf5q021CUssN9nIpxGgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLxP0-0001zv-Lt; Wed, 01 May 2019 22:08:34 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLxOt-0001ze-IQ
 for openwrt-devel@lists.openwrt.org; Wed, 01 May 2019 22:08:29 +0000
Received: by mail-lj1-x233.google.com with SMTP id w12so334807ljh.12
 for <openwrt-devel@lists.openwrt.org>; Wed, 01 May 2019 15:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=4nvO//hNl2ZjcyvIp6YJeZq0dzhVwHkJU4Pt3fGv4YI=;
 b=vuWR2DbOpl1U8YowRgiGz8lutgzcuoNcbllTpj6k5uA1eM2ZKHB5E5ltEf+jETHwYQ
 q/dLkzfvHOKuGlUKY8hMMaLqcpaxdppDpr+rCR4woMvYr2srxMOgztxFFf1tzi0RR3tO
 ReHNqFO7GlDIUP67098iSAXDNKTMg8n45uPlZ+ZNu7RzV4zmgtfH7U87ObGX5FP/xwQF
 cF17DOs3mdikiJc0BBP9G39dVS8d21K92pAmtr/qU6teO/spq3lycGSq+hi0d82w1xKN
 N+u9WPa4fplO5xS2pO9whzvXN+n0aZUNTfRsUANyMus2j7qMJznHwdudR9INpqxlUxk0
 XcqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=4nvO//hNl2ZjcyvIp6YJeZq0dzhVwHkJU4Pt3fGv4YI=;
 b=CjEIniyMfl2iYuk8LwfMD3xrIkrok8xgbAh4tswG//7e1AcB51L4R/z5f2g1zLCDNI
 DDq4+s4WFhGZllyrGyoAiKCv4tAi7WKcHtM/RbPgtx35PD5WMTQCTVdV8IyQo2a1Mzxx
 pssHt52YyE7bJuxBVQCWKg3YfwwILYjKw5ep1lNWuf9uvTLf407mSmSBgHTAwebJWO23
 awJWXPLtOxcG3iY8fXXX22j9vppTiruR2gZWtBtGS14Ez91bLrXBlB9uYqxJtn+oVXwR
 70nUnvfjROi3MTCbYgaXZTPDVtWzxqLoQzPdYbRZfQB6bu/Iy8DfxtjFzfpCjC8t3bLO
 X3/Q==
X-Gm-Message-State: APjAAAUVIXCSfQm48cuRGQ5xRUuesQywav2S8tnI1C8e+OkjfLjknVpA
 Acu5LgA2uzZGof3LMRbuE8n8VDekuJUWTqVoKwWuPw==
X-Google-Smtp-Source: APXvYqyghgzUw45dwOxOo9wMZG3Alt3QS/0wQ89geG+lkwVCUtjEf67uVI9nnYUWhwidSSOf2cokaN0Mzeo6fl0tU98=
X-Received: by 2002:a2e:3a17:: with SMTP id h23mr1941lja.105.1556748503513;
 Wed, 01 May 2019 15:08:23 -0700 (PDT)
MIME-Version: 1.0
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 2 May 2019 00:08:11 +0200
Message-ID: <CACRpkdZiK+CVwMjE9Vh70Pn_FNMbVpd95sj7CWxj9FNVDGWbvw@mail.gmail.com>
To: Boris Krasnovskiy <borkra@gmail.com>, 
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_150827_620954_05F24E4E 
X-CRM114-Status: UNSURE (   5.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:233 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] Commit 8dcc1087602e breaks FA526 (Gemini) compile
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

Hi Boris & friends,

commit 8dcc1087602e2dd606e4f6e81a06aee62cfd4f4c
"toolchain: ARM: Fix toolchain compilation for gcc 8.x"
regresses the Gemini (FA526-based).

I cannot quite see how. I noticed init crashed with the latest
OpenWrt codebase and bisected it down to this commit.

Before the commit include/target.mk has:

ifneq ($(findstring arm,$(ARCH)),)
 ....
 CPU_CFLAGS_fa526 = -mcpu=fa526
 ....
 ifeq ($(CONFIG_SOFT_FLOAT),)
    ....

After in toolchain/gcc/common.mk we have:

ifeq ($(CONFIG_arm),y)
CC_CONFIGURE+= \
       --with-cpu=$(word 1, $(subst +," ,$(CONFIG_CPU_TYPE)))
 ....
 ifneq ($(CONFIG_SOFT_FLOAT),y)
    GCC_CONFIGURE+= \
               --with-fpu=$(word 2, $(subst +, ",$(CONFIG_CPU_TYPE)))
               --with-float=hard

It's a bit terse so I cannot really make this out :/

Relevant stuff from my .config is:
CONFIG_CPU_TYPE="fa526"
CONFIG_arm=y
CONFIG_ARCH="arm"
CONFIG_SOFT_FLOAT=y

Any hints?

Yours,
Linus Walleij

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
