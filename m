Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 273885953C
	for <lists+openwrt-devel@lfdr.de>; Fri, 28 Jun 2019 09:42:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2jIgRChsLdUPDuK9iH/HCDUq0gFYtA6pAzpAi1TXM/U=; b=Nu1jkDh1Z0+uJKRUZw8XPxoKF
	82DjccBNhqxZy4vdFB8cHyfhQIPEv9S/J9NeK/QiGTmSSy96mIuPMktoI1/caBqC1XHhiFx+nYG8q
	a3sZYQBVo+iZqdeJP24q2VbtO462yBwL1YsdEbbNxrqdgxJ05q1vVU3QqbLvhyCE+nHvPhGO05wJI
	hck/L4QEfLAQRXbK5HZGEyNhGul1O5n0ASU3tXRCuCrk9DmxRI223Iwm0epRbGeZhrkNWwoEVnJmU
	DFpcWz59ngmHOhdx9ZtBYnB/f2UB3YiLJjWyLJfMixtod8Cz9wcXbnQQHwkpfdL+rqc0p4LsJUPnM
	r+qFvxwMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hglWN-0000Zi-Q2; Fri, 28 Jun 2019 07:42:11 +0000
Received: from 5.mo178.mail-out.ovh.net ([46.105.51.53])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hglUO-00071w-Vq
 for openwrt-devel@lists.openwrt.org; Fri, 28 Jun 2019 07:40:12 +0000
Received: from player797.ha.ovh.net (unknown [10.109.160.25])
 by mo178.mail-out.ovh.net (Postfix) with ESMTP id C90E36D5C9
 for <openwrt-devel@lists.openwrt.org>; Fri, 28 Jun 2019 09:40:02 +0200 (CEST)
Received: from milecki.pl (ip-194-187-74-233.konfederacka.maverick.com.pl
 [194.187.74.233]) (Authenticated sender: rafal@milecki.pl)
 by player797.ha.ovh.net (Postfix) with ESMTPSA id 479E57733CEA;
 Fri, 28 Jun 2019 07:39:58 +0000 (UTC)
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 openwrt-devel@lists.openwrt.org, Jo-Philipp Wich <jow@openwrt.org>
References: <20190621123002.9404-1-zajec5@gmail.com>
 <20190622121135.5029-1-zajec5@gmail.com>
 <20190622121135.5029-2-zajec5@gmail.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Message-ID: <19f95e19-907c-4db4-4e39-965d99c03228@milecki.pl>
Date: Fri, 28 Jun 2019 09:39:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.2
MIME-Version: 1.0
In-Reply-To: <20190622121135.5029-2-zajec5@gmail.com>
Content-Language: en-US
X-Ovh-Tracer-Id: 14146369382763826741
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrudelgdduvddvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_004009_232893_08AC255F 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.51.53 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] [PATCH V2 2/2] lua: rename package to lua5.1
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

T24gMjIuMDYuMjAxOSAxNDoxMSwgUmFmYcWCIE1pxYJlY2tpIHdyb3RlOgo+IEZyb206IFJhZmHF
giBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPiAKPiBUaGlzIHdpbGwgYWxsb3cgYWRkaW5n
IHBhY2thZ2VzIGZvciBuZXcgTHVhIHJlbGVhc2VzIGNsZWFubHkuIEF0IHRoZQo+IHNhbWUgdGlt
ZSBpdCBkb2Vzbid0IGJyZWFrIGV4aXN0aW5nIHBhY2thZ2VzIHRoYW5rcyB0byB0aGUgUFJPVklE
RVMuCj4gCj4gU2lnbmVkLW9mZi1ieTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBs
PgoKVGhpcyBjYXVzZXM6CldBUk5JTkc6IE1ha2VmaWxlICdwYWNrYWdlL2ZlZWRzL2x1Y2kvbHVj
aS9NYWtlZmlsZScgaGFzIGEgYnVpbGQgZGVwZW5kZW5jeSBvbiAnbHVhL2hvc3QnLCB3aGljaCBk
b2VzIG5vdCBleGlzdAoKVGhlcmUgaXNuJ3QgYSBzb2x1dGlvbiBzaW1pbGFyIHRvIFBST1ZJREVT
IGZvciBob3N0IHBhY2thZ2VzLiBJJ20KZHJvcHBpbmcgdGhpcyBwYXRjaCBmb3Igbm93IDooCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRl
dmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8v
bGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
