Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D310EA27F
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 18:26:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QpnGUkZP8mbEwM8t1Q5jsIpYh2Eg9q7AglnHG5QimsI=; b=jcHBk6jLjfnaMUWqp4lH8dfXK
	7tKk3t08nLR6qLoWbmmxd6uvCSTnA57qs/rGM3hV0KtTPQo/7IdEc7a/it4xA06hnAJHQy2/AKDMA
	UP9QAHGFVITtjF6uidiANzGyATVFaNMI8hOAWztmHnJwxYvk4/J9TqjMfEtM4Omdwtr/LsN2aWS5X
	e2raWhPKxNRNghiTbb1p/iUXqHmjqWJPuSNwHFRpsfms0vDwATV6frdF6UBhTGL6BV0mcSs/CfqTR
	SoIoPM8V0PDmWF6op6Tj8X4cYM1Gk7QhalO+ENgZmVEAyzO37dW26Dg+IdtP8prx5BkU0JmSezk2i
	c6/Xq2SIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPrjP-0001Gx-N8; Wed, 30 Oct 2019 17:26:03 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPrjJ-0001Gc-R4
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 17:25:59 +0000
Received: by mail-lf1-x12f.google.com with SMTP id j14so2183095lfb.8
 for <openwrt-devel@lists.openwrt.org>; Wed, 30 Oct 2019 10:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:cc:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=6WdjVCWLdzZ7CBQ5HulGnf7MgC5ynn0BNmymMP+/Zek=;
 b=vSGFWz+yYASctqW0P/0VU1veZaeG5eouF8SNitgMD7nLEI7+2NEwOQyGIMwhXBzSrU
 h1wv+69t2+4klSdx8UxAbRYerxepsXYloCMD1bjMW4IBZ2Ir++fRrvuc51lt6ak66j35
 GujemkiFqP/3u4qNM+KzYJpyVYxRBPjzuwZR93dSrWnwrs4LxAxDbdggFh+KswbopgJb
 zCkOLLCe5nlI+pY70I80PNlSKsvRLJ5y8DkPfzGOpvxLS523jXi5m4XJZ2IV63xN71rq
 gPG08BTqokXPAOI/FZCr5tVcS1GUWqe8ep2OD8NVhJRFBmKo4CClzdPdCyHknDWRMfN9
 uKrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:cc:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6WdjVCWLdzZ7CBQ5HulGnf7MgC5ynn0BNmymMP+/Zek=;
 b=t7CUsy3crthPyB9F9xs053HMXuxiANXZ0pPCNjff4VmsxdN/zFTWAclJBzavXyXtxJ
 ljVVQMYzpxsPl6bIuTBI4e8XUKNW7UAeWg9rzZDF8rfakk1EcZ/qcA6D5hwSYT9fT3/m
 0HF2LsWRruYGIvYvCs/b6/761dTCrKDYfhNVhfW2PjyFyYC1CJS9SBSF1fW0Jhye0FIp
 f+FZH30Qs8UmxnSqyEIHqk4chBjBQ6y2UWrr2gcCgyl/fEzz+OdpUDpDrvrxk9I22syj
 NPf9neC6ccSVT09jJSkP4MrQF2jbZhDyHX2s90HxNZy7QZFTMxd1nD7p7GVIDiy44dlR
 Gkgw==
X-Gm-Message-State: APjAAAU451KsP0Er/glm8V+6YZhjHyCfWglqQdF+LR1fuo7QVr1pKvYx
 FArbQhdoEUQSEe2XIXYHYZE=
X-Google-Smtp-Source: APXvYqwGbwwvYWsMrXCSN9hRksXFF8I3giGHCwSKoSChLNZPyfRIXqTSpaBJblaIz6N7NMnFxDhFAA==
X-Received: by 2002:ac2:4d17:: with SMTP id r23mr192164lfi.56.1572456355806;
 Wed, 30 Oct 2019 10:25:55 -0700 (PDT)
Received: from [31.11.183.129] (031011183129.warszawa.vectranet.pl.
 [31.11.183.129])
 by smtp.gmail.com with ESMTPSA id u27sm271339lfl.34.2019.10.30.10.25.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 30 Oct 2019 10:25:55 -0700 (PDT)
To: Hauke Mehrtens <hauke@hauke-m.de>, John Crispin <john@phrozen.org>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <772e4320-c84d-dbb0-6243-d2fb150d2401@phrozen.org>
 <b8079f7e-d50c-45a9-d2f9-984f10716cd0@hauke-m.de>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <035968cd-2ce6-5142-f899-9ce1e5b295e1@gmail.com>
Date: Wed, 30 Oct 2019 18:25:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <b8079f7e-d50c-45a9-d2f9-984f10716cd0@hauke-m.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_102557_898284_02380E83 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe2k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] v5.4 as next kernel
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgSGF1a2UsIEpvaG4sCgpPbiAzMC4xMC4yMDE5IDE2OjU0LCBIYXVrZSBNZWhydGVucyB3cm90
ZToKPiBPbiAxMC8yOS8xOSA2OjM3IEFNLCBKb2huIENyaXNwaW4gd3JvdGU6Cj4+IEhpLAo+PiBz
aG91bGQgd2UgdXNlIHY1LjQgYXMgb3VyIG5leHQga2VybmVsID8KPj4gwqDCoMKgwqBKb2huCj4g
Cj4gSSBhbHNvIGFncmVlIHRvIGhhdmUga2VybmVsIDUuNCBhcyB0aGUgbmV4dCBrZXJuZWwsIGl0
IHdpbGwgYmUgZmluYWxseQo+IHJlbGVhc2VkIGluIGFib3V0IDEgbW9udGhzIGFuZCBpdCBpcyBh
IGxvbmcgdGVybSBrZXJuZWwuIElmIHdlIGFyZSBsdWNreQo+IGl0IHdpbGwgYmUgc3VwcG9ydGVk
IGZvciA2IHllYXJzIGZvciBBbmRyb2lkLgo+IAo+IFdoYXQgZG8gd2Ugd2FudCB0byB1c2UgaW4g
dGhlIG5leHQgMjAuWCByZWxlYXNlIGFmdGVyIDE5LjA3Pwo+IElmIHdlIHdhbnQgdG8gZ28gd2l0
aCBrZXJuZWwgNS40IHdpdGggdGhlIHJlbGVhc2UgYWZ0ZXIgMTkuMDcgd2UgY2FuIG5vdAo+IG1h
a2UgdGhpcyByZWxlYXNlIGJlZm9yZSBBcHJpbCwgSSB3b3VsZCBhc3N1bWUuIFdlIHdvdWxkIGhh
dmUgZ2VuZXJpYwo+IHN1cHBvcnQgaW4gT3BlbldydCBtYXN0ZXIgaW4gYWJvdXQgMSBtb250aCBh
bmQgdGhlbiB3ZSB3aWxsIHBvcnQgdGhlCj4gdGFyZ2V0cywgcHJvYmFibHkgd2Ugd2lsbCBoYXZl
IHRoZSBtb3N0IGltcG9ydGFudCB0YXJnZXRzIHBvcnRlZCBhYm91dAo+IDIgbW9udGhzIGxhdGVy
IChNaWQgSmFudWFyeSAyMDIwKSBhbmQgY2FuIHN0YWJpbGl6ZSBhbmQgcG9ydCB0aGUgcmVzdCBv
Zgo+IGFmdGVyd2FyZHMuCgorMSBmb3IgNS40IGFzIG5leHQgb25lIGJ1dCBub3QgYXMgbmV4dCAo
MjAueCkgcmVsZWFzZSBiYXNlLiA0LjE5IEVPTCBpcyAKRGVjIDIwMjAsIHdpdGggNS40IGluIG1h
c3RlciBhcm91bmQgSmFuIDIwMjAgd2Ugc2hvdWxkIGJlIGFibGUgdG8gc2hpcCAKcmVsZWFzZSB3
aXRoIDUuNCBiZWZvcmUgNC4xOSBnZXRzIEVPTC4gT3RoZXJ3aXNlLCBJJ20gd29ycmllZCBqdW1w
aW5nIHRvIAo1LjQgbm93IG1pZ2h0IGRlbGF5IG5leHQgcmVsZWFzZSB0byB0aGUgZW5kIG9mIDIw
MjAuIE15IDJjLgoKLS0gCkNoZWVycywKUGlvdHIKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQt
ZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
