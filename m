Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 062D4CBA75
	for <lists+openwrt-devel@lfdr.de>; Fri,  4 Oct 2019 14:31:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WgqxDvnFfq8a/ajggx51s4Ok6a9OWYMpxTbJxZefTvQ=; b=BHjpTdsjsZsQ4OOCkO3Z1ApEI
	WTupI2Tbc2c958tKf4unyQgLMKsysV4YMmXJglkqE1QRTNiYTr/rVPnQT3tLy1TTHff26qKygYH/u
	4zFmmO1CSetYW3UkoMKq3hiH0DieJjrx/ttcf05zZXSRDNTc7JIkwIBn2pws02lFOxAPS0gyGhFXG
	jCUktcSP6L4fNeg2XrGHfwd1Bt1zrOnh3JA+OOy9Z6r6wAbtFsaI5dvja/j53fUWIvnRW0NDMrm8X
	Jn3SBq9AXz1BbhGAu3uPLwtIo0nNB8+rqUMXNLsmEyNW99bT2qCoxOvqVSAKsjzQdJzsiOfCrNEVg
	83Dbq8qBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMjY-0003we-A2; Fri, 04 Oct 2019 12:30:56 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMjM-0003w6-Pb
 for openwrt-devel@lists.openwrt.org; Fri, 04 Oct 2019 12:30:46 +0000
Received: by mail-ed1-x543.google.com with SMTP id v38so5638243edm.7
 for <openwrt-devel@lists.openwrt.org>; Fri, 04 Oct 2019 05:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:cc:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=A3KYSmBSW4hzCIi5OaGx78blYDfS14zGS0dLjn7btQA=;
 b=ureStbdOxxtazwurzhNAIVjQl86r4o841ooZEXzz1lwKMnwdA85QgRj6DlmjVVoewT
 earqwV5NtwkcX+VJmiUQA2hG8bTb7hyE3izJLF28Z8UthtXcwX1cTes86aIO3GnLLSiu
 tRl3KsD6Vdulp9lkFsj1zfco2Ro5sOJDgKSFirf1CUzc+k33XdsKDnXnbA6l0fUUyia1
 tW2cwYil+m/B+ZQmq89xbfB7ub0wZkwXFy9dZYz6sQeBmEznzjCesjKEUJJg3DSNuLqZ
 Nxsxv53c86bpE2aoKMLhEhNNeUgjnMpxO7IP2zbOaRn0l+euS8ez9ZCcszkUxEmBzE3J
 p4eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:cc:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=A3KYSmBSW4hzCIi5OaGx78blYDfS14zGS0dLjn7btQA=;
 b=DBgFJxD7y9WFBrK4y1kK7HTjkp/b51K5KL1QwGUa6hYh+P564wUTh6ht8wyLteyiqs
 3Tzovsfg9QohBOYPA5+MLTp77C2nP9iZ+rODr7tk4F+HzOnlP0GNXx0jZojbqIkXH93Q
 gwmjd87EapP53NkUsEc5LXiWRhaEePIdukp32eKEtsopRsY3eILFxBA5fSnNKFt2ojNa
 npIjWRVxR8xfxap8KZCMx/F5W88TT+Bqx/F2Ok/ERCQkjevkjEqpfsFf7UXSeLlMJzP9
 3VFT7+K3XfPiI+YzhAcBeHbOmqScUTsTdb816xPjjJP1T0ZN4R3vrSD3AJXyx6anwGGD
 /eXQ==
X-Gm-Message-State: APjAAAWtOKB/229TO8oBA9kvo6wpBQlF+TsL9F+C8vyblbQEF4Mc7A69
 lFkujctxb4LMyLO7P5MJWaRncg==
X-Google-Smtp-Source: APXvYqxLfzGas6+7xyxunE7mjafzDLGudxtFZeDz4BIy69ud9szbbzh+jw9WMixP7DFriqryptNMyQ==
X-Received: by 2002:a50:8933:: with SMTP id e48mr14745537ede.51.1570192242323; 
 Fri, 04 Oct 2019 05:30:42 -0700 (PDT)
Received: from [192.168.3.176] (d515300d8.static.telenet.be. [81.83.0.216])
 by smtp.gmail.com with ESMTPSA id f4sm1087909edf.47.2019.10.04.05.30.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 04 Oct 2019 05:30:41 -0700 (PDT)
To: Tim Harvey <tharvey@gateworks.com>, openwrt-devel@lists.openwrt.org
References: <1570054885-11705-1-git-send-email-tharvey@gateworks.com>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <5022641f-0bdc-d055-c232-18bb3da486af@ncentric.com>
Date: Fri, 4 Oct 2019 14:30:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1570054885-11705-1-git-send-email-tharvey@gateworks.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_053044_949020_9062DFA1 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] imx6: bootscript: enable UBI
 fastmap support
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
Cc: richard@nod.at
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDAzLjEwLjE5IDAwOjIxLCBUaW0gSGFydmV5IHdyb3RlOgo+IFVCSSBGYXN0bWFwIHN1cHBv
cnQgaXMgc3RhYmxlIGluIHRoZSA0LjQga2VybmVsIHNvIGxldHMgdGFrZQo+IGFkdmFudGFnZSBv
ZiBpdCB0byBzaGF2ZSBvZmYgNS0xMCBzZWNvbmRzIG9mIGJvb3QgdGltZS4KPgo+IFNpZ25lZC1v
ZmYtYnk6IFRpbSBIYXJ2ZXkgPHRoYXJ2ZXlAZ2F0ZXdvcmtzLmNvbT4KPiAtLS0KPiAgIHRhcmdl
dC9saW51eC9pbXg2L2ltYWdlL2Jvb3RzY3JpcHQtdmVudGFuYSB8IDQgKysrLQo+ICAgMSBmaWxl
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBh
L3RhcmdldC9saW51eC9pbXg2L2ltYWdlL2Jvb3RzY3JpcHQtdmVudGFuYSBiL3RhcmdldC9saW51
eC9pbXg2L2ltYWdlL2Jvb3RzY3JpcHQtdmVudGFuYQo+IGluZGV4IDk0MWFmYjUuLjg0NTFjYWYg
MTAwNjQ0Cj4gLS0tIGEvdGFyZ2V0L2xpbnV4L2lteDYvaW1hZ2UvYm9vdHNjcmlwdC12ZW50YW5h
Cj4gKysrIGIvdGFyZ2V0L2xpbnV4L2lteDYvaW1hZ2UvYm9vdHNjcmlwdC12ZW50YW5hCj4gQEAg
LTEsNCArMSw0IEBACj4gLWVjaG8gIkdhdGV3b3JrcyBWZW50YW5hIE9wZW5XcnQgQm9vdCBzY3Jp
cHQgdjEuMDEiCj4gK2VjaG8gIkdhdGV3b3JrcyBWZW50YW5hIE9wZW5XcnQgQm9vdCBzY3JpcHQg
djEuMDIiCj4gICAKPiAgICMgc2V0IHNvbWUgZGVmYXVsdHMKPiAgICMgc2V0IHNvbWUgZGVmYXVs
dHMKPiBAQCAtNTEsNiArNTEsOCBAQCBpZiBpdGVzdC5zICJ4JHtkdHlwZX0iID09ICJ4bmFuZCIg
OyB0aGVuCj4gICAJZWNobyAibXRkcGFydHM6JHttdGRwYXJ0c30iCj4gICAJc2V0ZW52IGZzbG9h
ZCB1Ymlmc2xvYWQKPiAgIAlzZXRlbnYgcm9vdCAidWJpMDp1YmkgdWJpLm10ZD0yIHJvb3Rmc3R5
cGU9c3F1YXNoZnMsdWJpZnMiCj4gKwkjIGVuYWJsZSBVQkkgZmFzdG1hcCBzdXBwb3J0Cj4gKwlz
ZXRlbnYgYm9vdGFyZ3MgIiR7Ym9vdGFyZ3N9IHViaS5mbV9hdXRvY29udmVydD0xIgo+ICAgZWxz
ZQo+ICAgCWVjaG8gIkJvb3RpbmcgZnJvbSBibG9jayBkZXZpY2UgJHtib290ZGV2fS4uLiIKPiAg
IAlzZXRlbnYgZnNsb2FkICIke2ZzfWxvYWQgJHtkdHlwZX0gJHtkaXNrfToxIgoKSGkgVGltLAoK
U2hvdWxkbid0IHRoaXMgcGF0Y2ggYWxzbyBlbmFibGUgdGhlIHJlcXVpcmVkIGtlcm5lbCBzeW1i
b2w/IAooTVREX1VCSV9GQVNUTUFQKQoKTmV4dCB0byB0aGF0LCBldmVuIGluIGtlcm5lbCA0LjE5
IEknbSByZWFkaW5nIGZvbGxvd2luZyByZWdhcmRpbmcgdGhpcyAKZmVhdHVyZToKCkltcG9ydGFu
dDogdGhpcyBmZWF0dXJlIGlzIGV4cGVyaW1lbnRhbCBzbyBmYXIgYW5kIHRoZSBvbi1mbGFzaCDi
lIIKZm9ybWF0IGZvciBmYXN0bWFwIG1heSBjaGFuZ2UgaW4gdGhlIG5leHQga2VybmVsIHZlcnNp
b25zCgoKSGkgUmljaGFyZCwKCkFwb2xvZ2llcyBmb3IgZHJhZ2dpbmcgeW91IGluIGhlcmUuCgpI
b3cgc3RhYmxlIGlzIHRoaXMgZmFzdG1hcCBmb3JtYXQ/CgpXaWxsIGl0IGxlYXZlIEV4cGVyaW1l
bnRhbCBzdGF0ZSBpbiB0aGUgbmVhciBmdXR1cmU/CgoKVGhhbmtzLAoKS29lbgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFp
bGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5v
cGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
