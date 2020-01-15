Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC6513C439
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Jan 2020 14:57:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ANAl0S481lE4qmWQ7k64kRQ3JNzMLCicTRfHnulPUuQ=; b=DR6EVce5JTBKLM
	eeJr0G5NnQeatif2C8XLQsyxkGY46nltW++m8Bl5PDgL/s/77Fuo5SOFIa9OSNim53qkb6Dehba/4
	OawlFiSi3qOpvJXHB41HGWHuiLDN3MzTe9OTyvZtlm2MAikeJvM8CTV/R33LTlSZF8YvtVYba0YgJ
	jIb0vKlKnh0GcWAyHpl+2AxCPiCkgCcRQNgwFwFAtd5E2PqilPBwi6GUVHuIDWAxiGjEqpAiNwM/x
	SAnj3g2Muwspqa7ci0Q1nOsnAYf1QkAkkMBHS0tSfT3Z95dv5UsdCH4UMXX3Ga3JSRu7czPnQQF6a
	XbjDyiPKRJ9G3vKiICiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irjAT-0001i3-Dz; Wed, 15 Jan 2020 13:57:09 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irjAG-0001gJ-Vh; Wed, 15 Jan 2020 13:57:01 +0000
Received: by mail-qt1-x842.google.com with SMTP id d5so15812797qto.0;
 Wed, 15 Jan 2020 05:56:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=P7Pp/CADsqykgFDaif260VD4mfo18Y8vvOtkL7Un4Kk=;
 b=E2qb7bpJ3c16JPzIFVQ6YI+0tqAWRodxMx1Kf92+irUfG8Zp99OodGtzq8r6eQGFoS
 lwtUEn3tOnxJR7RWLq10b4Y07xsdqL7qg16zoVWV+JaWy73U+69iGXDrSGNJwWfHoQG6
 hg9Dez7MRRrsb2TwBplSQkMussL1yWvpo1NI3G1BmEEybB0Rdeeu6TtDnNHnxuw+2geB
 4gC0Sqxdd5OLBRUzChm8plZY1o2vtEsYRBzPJupny0lPS8LhwXukJ6ChTC+6NCgpHuWW
 6wwivQF4miKennVyZS0csWURq4Z5xuR3bHIjakNoW5syYF50eUSCG5sA/2Zu8AspdIob
 YdbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=P7Pp/CADsqykgFDaif260VD4mfo18Y8vvOtkL7Un4Kk=;
 b=O4hUb9cRZUA0sBwqHnYO9nWQMJkXGe/SOwiSU0uxFoFf33yxVcYq9+B+rHaQfnTFTe
 r8gei4qXO8qEtR4YLMoB8FvwPb4/bGva4Q83NfPHe0Tn1zPO+Bhcs+3tsqzWo4R7kqyt
 V4lstd5cPb5sxTbXB5EEZmq8MaiGteJOmeRvYHZwAJi5hJiYbfnJAlIS5zoDicDlMmKn
 OerztTmivBBhD0JdFyfwBUiPaPb8ANTh17vkMmPoXcsaXNLUfTD/gip1Y1OsGIdHyR1Z
 LoudyLJunjpMjbMgzP7Vu7yQDvmi88lHwv9ZkCH8miMNhfjCTBPKyXnP6nnHKpxofvmW
 2PdA==
X-Gm-Message-State: APjAAAWdqv1kS1qRdxuhWXDfpoJh684yyWQPl7TBhmyY2UOU8xc2txyQ
 tmLokWhOPCO5GI5qpCmBxI4=
X-Google-Smtp-Source: APXvYqwPqAFoLwF4IazkzYqetuwwmm7aG4bnwylCLiqYX5fMYCHltt0J1qh0G1kn265crMJwKK4h1w==
X-Received: by 2002:ac8:1184:: with SMTP id d4mr3685766qtj.104.1579096615629; 
 Wed, 15 Jan 2020 05:56:55 -0800 (PST)
Received: from richs-mbp-10337.lan
 (pool-64-223-224-196.port.east.myfairpoint.net. [64.223.224.196])
 by smtp.gmail.com with ESMTPSA id l4sm8430379qkb.37.2020.01.15.05.56.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 Jan 2020 05:56:54 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
From: Rich Brown <richb.hanover@gmail.com>
In-Reply-To: <2bfd43ad-cde5-5697-d3f3-54cb826e0ae4@gmail.com>
Date: Wed, 15 Jan 2020 08:56:53 -0500
Message-Id: <EB869920-9DEB-4D5F-9445-46E2B61E546A@gmail.com>
References: <20200108214728.GA8104@meh.true.cz>
 <20200114112733.GA25921@meh.true.cz>
 <2bfd43ad-cde5-5697-d3f3-54cb826e0ae4@gmail.com>
To: Nishant Sharma <codemarauder@gmail.com>
X-Mailer: Apple Mail (2.3273)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_055657_043356_C32DDD35 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richb.hanover[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] New OpenWrt logo proposal [Was: Re: [RFC]new
 "corporate identity" for OpenWrt & static rendering]
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
Cc: OpenWrt Project Administration <openwrt-adm@lists.openwrt.org>,
 Adriel Omboy <adingph@gmail.com>,
 =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>, openwrt-devel@lists.openwrt.org,
 m.camargomoreira@gmail.com, Thomas Endt <tmo26@gmx.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SW4gaG9wZXMgb2YgZ3VpZGluZyB0aGlzIGNvbnZlcnNhdGlvbiB0b3dhcmQgdGhlIGZvcnVtLCBJ
IHJlcG9zdGVkIE5pc2hhbnQgU2hhcm1hJ3MgY29tbWVudCB0aGVyZS4uLiBodHRwczovL2ZvcnVt
Lm9wZW53cnQub3JnL3QvaGVscC1wcmUtc2VsZWN0LW5ldy1vcGVud3J0LXByb2plY3QtbG9nby1p
bi10aGUtcG9sbC81MjY3NC85Cgo+IE9uIEphbiAxNSwgMjAyMCwgYXQgMTI6MDAgQU0sIE5pc2hh
bnQgU2hhcm1hIDxjb2RlbWFyYXVkZXJAZ21haWwuY29tPiB3cm90ZToKPiAKPiBIaSBQZXRyLAo+
IAo+IE9uIDE0LzAxLzIwIDQ6NTcgUE0sIFBldHIgxaB0ZXRpYXIgd3JvdGU6Cj4+IFBldHIgxaB0
ZXRpYXIgPHluZXp6QHRydWUuY3o+IFsyMDIwLTAxLTA4IDIyOjQ3OjI4XToKPj4gCj4+IDEuIGh0
dHBzOi8vZm9ydW0ub3BlbndydC5vcmcvdC9oZWxwLXByZS1zZWxlY3QtbmV3LW9wZW53cnQtcHJv
amVjdC1sb2dvLWluLXRoZS1wb2xsLzUyNjc0Cj4gCj4gQWxsIG9mIHRoZW0gYXJlIG5pY2UgYW5k
IEkgaGF2ZSB2b3RlZCBmb3IgdGhlIG9uZSBJIGxpa2VkLiBJIGhhdmUgYQo+IHRob3VnaHQgaGVy
ZS4KPiAKPiBBcyBmYXIgYXMgSSBzZWUgYW5kIHVzZSwgT3BlbldydCBkb2Vzbid0IHN0YW5kIGp1
c3QgZm9yIHdpcmVsZXNzCj4gZnJlZWRvbSwgdGhvdWdoIHRoYXQncyB0aGUgbW9zdCBwb3B1bGFy
IHVzZSBjYXNlLiBJdCBpcyBiZWluZyB1c2VkIGFzIGEKPiBiYXNlIGZvciB2YXJpb3VzIGZ1bmN0
aW9ucyByZWxhdGVkIGJ1dCBub3QgbGltaXRlZCB0byBtZXNoaW5nLCByb3V0aW5nLAo+IG5ldHdv
cmsgc2VjdXJpdHksIElvVCBhbmQgYW55dGhpbmcgb3IgZXZlcnl0aGluZyB0aGF0IG9uZSBjYW4g
aW1hZ2luZSBvcgo+IGltcGxlbWVudCB3aXRoIGFkZGl0aW9uYWwgcGFja2FnZXMuIEl0IGdpdmVz
IHVzIHN1Y2ggYSAiZnJlZWRvbSIgYW5kCj4gaGVscHMgdXMgcHJvdGVjdCBvdXIgInByaXZhY3ki
Lgo+IAo+IFRoZSBsb2dvICJIIiByZXByZXNlbnRzIHRoZSB2ZXJzYXRpbGl0eSwgYnV0IG1pc3Nl
cyB0aGUgd2lyZWxlc3MuCj4gCj4gUmVnYXJkcywKPiBOaXNoYW50Cj4gCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBvcGVud3J0LWFkbSBtYWlsaW5n
IGxpc3QKPiBvcGVud3J0LWFkbUBsaXN0cy5vcGVud3J0Lm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1hZG0KCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlz
dApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5v
cmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
