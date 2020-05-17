Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 246A61D6866
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 May 2020 16:20:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XcH1rDnO8cLWuYl0cfGwWAYm8SuOybvCsgGfdLFWbCg=; b=IBBYwc9BnwJVl5Jm3WAWFU+A0
	ukWLAM2W2Y1Jyz4jOvTuOeruN4pjPSoRUJWAZDApa8Q66RGDMieObTolYVYxglkZslNopYw/F+K/O
	4U52bnOeJ2KomL7GuW/l766VKy+t/dqFqRWoj8KnExl7V+MibUSqgXOu8raylwJG5ER5M8WfCbPWK
	/Pu83STnEK3Xcvec/oI9nYve2fiZSUEhvpoPHv5JtJ0an7WUdcXrVW9MgI13D0NIpKdM12hapHaQY
	XL2xk3Ov6XkqX7azQY7TPJpQpRmRnM3qJaOT/sYqgdB4EnTRY65GzFc7WU0J7yLQq8pj4Qjk0B5pi
	/UK8k9NEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaK9K-0005dE-7v; Sun, 17 May 2020 14:20:18 +0000
Received: from meesny.iki.fi ([2001:67c:2b0:1c1::201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaK92-000523-0q
 for openwrt-devel@lists.openwrt.org; Sun, 17 May 2020 14:20:02 +0000
Received: from [IPv6:2001:14ba:8091:2700:3534:deaa:1434:c403]
 (dtckwryb1hxsmzgbz4tbt-3.rev.dnainternet.fi
 [IPv6:2001:14ba:8091:2700:3534:deaa:1434:c403])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: hannu.nyman)
 by meesny.iki.fi (Postfix) with ESMTPSA id 97657202C5;
 Sun, 17 May 2020 17:19:48 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1589725188;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3q4OGujtB+1+G7XfHzhGauXjTT8/5huLMJ0/8Tyq4Qw=;
 b=IxTxQ7kg+KJro782xVhn3OUZBBWmV+4fF25FxShsc0cvHM0OBHZE6Cg1m8K1XEmokl7zYX
 dt4GXWWAMNSwvTe/qvH9qFZWC6Oa5+3/c7x2smyGCge4CXZLXvjqL7hKArsD2zhc0vQrQ9
 dywQx03XbDmvffOQ+fQMzYCIBMVEEJw=
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <a41b5533-ab3a-d360-1fb2-53392a19158e@iki.fi>
 <20200517135807.GH69771@meh.true.cz>
From: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <10283b80-790f-ae9a-809a-5fcc97b4201b@iki.fi>
Date: Sun, 17 May 2020 17:19:49 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:77.0) Gecko/20100101
 Thunderbird/77.0
MIME-Version: 1.0
In-Reply-To: <20200517135807.GH69771@meh.true.cz>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1589725188;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3q4OGujtB+1+G7XfHzhGauXjTT8/5huLMJ0/8Tyq4Qw=;
 b=hesp07M4dZoDqw1TdSoAHdzAxGmv3oZc05c81dobNZva+WHbVwRyYHJrMbkG5ikeKT1Wsh
 0VYZPvUBrFdrJXjqujUV+NEaFsWApIf9jRv+PNDMCDob7k9816oI9YQ1tene/fJRs1IOAg
 B9b93m+4ra0IN+LNNZg63prkcm4ZxPQ=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1589725188; a=rsa-sha256; cv=none;
 b=exooVJLUaGfe/m3jVq2VSSjBH5eR/58aK8O0wp0bGNywU6zFXmPg1dbzveb9lTrtGQnPYs
 rcmRrnNYia5SUmn4x2TmX5ytAJQImtQH7/aX5cI4FkK+suVGT1LDUpcvsio/OMJhOz+jwe
 HmfbgmUldyQh/33cHVYchPZejEQkOEk=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=hannu.nyman smtp.mailfrom=hannu.nyman@iki.fi
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_072000_409569_FDB85E0E 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Is 18.06 packages buildbot intentionally
 offline?
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGV0ciDFoHRldGlhciBraXJqb2l0dGkgMTcuNS4yMDIwIGtsbyAxNi41ODoKPiBIYW5udSBOeW1h
biA8aGFubnUubnltYW5AaWtpLmZpPiBbMjAyMC0wNS0xNiAxMTo0Njo1NV06Cj4KPiBIaSwKPgo+
PiBBcHBhcmVudGx5IHRoZSBvcGVud3J0LTE4LjA2IHBhY2thZ2VzIGJ1aWxkYm90IGhhcyBiZWVu
IG9mZmxpbmUgdGhyZWUgd2Vla3MsCj4+IHNpbmNlIDIyIEFwcmlsIDIwMjA6Cj4+Cj4+IGh0dHA6
Ly9idWlsZGJvdC5vcGVud3J0Lm9yZy9vcGVud3J0LTE4LjA2L3BhY2thZ2VzL29uZV9saW5lX3Bl
cl9idWlsZAo+Pgo+PiBJcyB0aGF0IGludGVudGlvbmFsPwo+IHllcCwgYmVjYXVzZSBzb21ld2hl
cmUgYXQgdGhhdCB0aW1lIHdlJ3ZlIHN1ZGRlbmx5IGxvc3QgMTYgT1NVT1NMIGJ1aWxkc2xhdmVz
Cj4gYW5kIEkndmUgbW92ZWQgdGhvc2UgdHdvIGJ1aWxkc2xhdmVzIHRvIDE5LjA3IHBhY2thZ2Vz
IGFuZCBtYXN0ZXIgaW1hZ2VzIGFzCj4gdGhlcmUgd2FzbnQgYW55IGJ1aWxkc2xhdmUgYWN0aXZl
IGF0IHRoYXQgdGltZS4KCgpUaGFua3MgZm9yIGluZm8uCgoKPj4gVGhlcmUgaGFzIGJlZW4gc29t
ZSB0YWxrIGFib3V0IDE4LjA2LjMgaXQgc2VlbXMgc3RyYW5nZSB0aGF0IHRoZSBwYWNrYWdlcwo+
PiBidWlsZGJ0IHdvdWxkIGJlIGludGVudGlvbmFsbHkgb2ZmbGluZSBmb3Igc2V2ZXJhbCB3ZWVr
cy4KPiBBRkFJSyByZWxlYXNlIG1lYW5zIGZpcm13YXJlIGltYWdlcywgcGFja2FnZXMgY2FuIGJl
IHVwZ3JhZGVkIGFueXRpbWUsIHNvIHRoZQo+IHJlbGVhc2UgdGFnZ2luZyBkb2Vzbid0IGhhdmUg
YW55IGluZmx1ZW5jZSBvbiB0aGUgcGFja2FnZXMuCgoKU3VyZSwgbm8gZGlyZWN0IGNvbm5lY3Rp
b24gdG8gdGhlIHJlbGVhc2UgY29tcGlsYXRpb24uIEJ1dCBhcyB1c2VycyB3aWxsIApsaWtlbHkg
cmVpbnN0YWxsIHBhY2thZ2VzIGFmdGVyIGZsYXNoaW5nIGEgbmV3IG1haW50ZW5hbmNlIHJlbGVh
c2UsIGl0IHdvdWxkIApiZSBncmVhdCB0byBoYXZlIHRoZSB1cGRhdGVkIHBhY2thZ2VzIHRoZXJl
IGZvciB0aGVtLiBUaGVyZSBoYXZlIGJlZW4gc29tZSAKY2hhbmdlcyBkdXJpbmcgdGhlIGxhc3Qg
d2Vla3MgZXZlbiBpbiB0aGUgbWFpbmx5IHN0YXRpYyAxOC4wNiBwYWNrYWdlIGZlZWRzIAooYWx0
aG91Z2ggdG8gbm90IHRoYXQgbWFueSBwYWNrYWdlcykuCgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9w
ZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
