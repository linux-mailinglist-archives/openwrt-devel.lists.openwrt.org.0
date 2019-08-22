Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A17E99077
	for <lists+openwrt-devel@lfdr.de>; Thu, 22 Aug 2019 12:12:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Rb55OUVzL2JYwg2x51PcQvoykagrs6/12jwd1/1/DHk=; b=WjfB+RifXjXBpxJzW7h7JN9Lx
	3tQCZ3pBK7HNVZqnAog4Qfwx+CuTKA7uvpNp0xSSCTV23MhxIr1LiH14hQTmsaR2vY1I3GxSOUT0u
	pszgh8IBnndWM/de58px8wNtdr+6w3lQDY/9VRoJmxoc4Zy54aJHL6dQ9vNjuyXgSYo9lOYEHvpdk
	4nBRT5eD7hugqGYFyLdAzLEX6kTXrqiH4uQvHhxrPVEL1dbsG6mAbKpLbC7+uNarUhtJDMPcmQ1JN
	UOwVvJmwqRa0Bp5jbOcYTBJd/1ZkdbH2ZBqLU/BCwsMWBTx90NhWRS690e2pvf0/l+DjsaogQTHgG
	fdLixC67A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0k4h-0002QV-Qb; Thu, 22 Aug 2019 10:12:11 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0k4X-0002Q1-Jp
 for openwrt-devel@lists.openwrt.org; Thu, 22 Aug 2019 10:12:03 +0000
Received: from pd95fd646.dip0.t-ipconnect.de ([217.95.214.70]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1i0k4U-0000yp-MB; Thu, 22 Aug 2019 12:11:58 +0200
To: Paul Spooren <mail@aparcar.org>, openwrt-devel@lists.openwrt.org
References: <20190822005924.32310-1-mail@aparcar.org>
 <40b56056-3fc8-931f-81d8-97e3b78d6004@phrozen.org>
 <1511b4b8-335c-1863-3c45-0c46a3fd3d61@aparcar.org>
From: John Crispin <john@phrozen.org>
Message-ID: <770d1eb5-f4de-bb7d-dadc-2632af7f5084@phrozen.org>
Date: Thu, 22 Aug 2019 12:11:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1511b4b8-335c-1863-3c45-0c46a3fd3d61@aparcar.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_031201_814487_0205497A 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] ipqx0xx: add Generic subtarget
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

Ck9uIDIyLzA4LzIwMTkgMDg6NDcsIFBhdWwgU3Bvb3JlbiB3cm90ZToKPiBIaSBKb2huLAo+PiBU
aGlzIGNvbW1pdCBhZGRzIHRoZSBHZW5lcmljIHN1YnRhcmdldCByZXN1bHRpbmcgaW4gY29uc2lz
dGVudCBuYW1pbmcuIAo+Cj4gYW5kCj4KPj4gYWxyZWFkeSB1c2VzIGB4L2dlbmVyaWMvYCBhcyBz
dWJmb2xkZXIgYXMgaWYgdGhlIHN1YnRhcmdldCB3b3VsZCBleGlzdC4gCj4KPiBJJ20gdmVyeSBt
dWNoIGluIGZhdm9yIG9mIGNvbnNpc3RlbnQgbmFtZXNbMF1bMV1bMl0gYXMgaXQgcmVkdWNlcyB0
aGUgCj4gaGFzc2xlIHdoZW4gdHJ5aW5nIGF1dG9tYXRlIHRoaW5ncywgbGlrZSBidWlsZGluZyBp
bWFnZXMgdmlhIGFuIEFQSVszXS4KPgo+IElzIHRoZSBzdWJ0YXJnZXQgY2F1c2luZyBhbnkgaGFy
bSBleGNlcHQgZm9yIGVpZ2h0IGFkZGl0aW9uYWwgCj4gY2hhcmFjdGVycyBwZXIgZmlsZW5hbWU/
Cj4KPiBQYXVsCj4KPiBbMF06IGh0dHBzOi8vZ2l0aHViLmNvbS9vcGVud3J0L29wZW53cnQvcHVs
bC8yMzMwCj4gWzFdOiBodHRwczovL2dpdGh1Yi5jb20vb3BlbndydC9vcGVud3J0L3B1bGwvMjMz
NAo+IFsyXTogaHR0cHM6Ly9naXRodWIuY29tL29wZW53cnQvb3BlbndydC9wdWxsLzIzMjYKPiBb
M106IGh0dHBzOi8vZ2l0aHViLmNvbS9hcGFyY2FyL2F0dGVuZGVkc3lzdXBncmFkZS1zZXJ2ZXIK
Pgpkb250IHJlYWxseSBjYXJlLCBqdXN0IHdvbmRlcmluZyB3aHkKCiDCoMKgwqAgSm9obgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2
ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9s
aXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
