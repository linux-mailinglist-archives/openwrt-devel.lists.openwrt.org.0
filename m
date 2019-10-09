Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D176D118B
	for <lists+openwrt-devel@lfdr.de>; Wed,  9 Oct 2019 16:41:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NVpQ87F0HiJ0QQHNr8pKbbE9hkZ86Mtp5CGx7pkw10o=; b=F9YZj0lpFR0Vo14ZQ8AkHfbC6
	IDwdK+5wtds5JCsEAsb8hS6LTyFwYnGfBGRGuekGQqaVFxMnsqgtlYsTUcM6dh171kaj29WnHlbP8
	5SsaktCqdGBkJ/leAokdud9Lsgb0lL1+RClZlbuYzEkPdx0KL1/QYCMsr2LD83SZqU6zYU0zkORYT
	/iRkru1f4hnexmRvZZXesl8Pidwg9L2Fcwe/Bee00Hz9Ve1PSs0hGM6piMKpMsh3WIfYN20bP3t3z
	ilPlB41hYUsMx7T8CPHOV3kQfbxBphL1T8ngYvfy/fCaftNJYUO7Uo1ZQJgGcan5knoQd++Bp1s+g
	OqkK38emg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iID9y-0000Yt-N3; Wed, 09 Oct 2019 14:41:50 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iID9u-0000XY-0Y
 for openwrt-devel@lists.openwrt.org; Wed, 09 Oct 2019 14:41:47 +0000
Received: from p5dcfbc2a.dip0.t-ipconnect.de ([93.207.188.42]
 helo=[10.255.191.27])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iID9s-0003K2-7G; Wed, 09 Oct 2019 16:41:44 +0200
To: =?UTF-8?Q?Alin_N=c4=83stac?= <alin.nastac@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <1570624897-16993-1-git-send-email-alin.nastac@gmail.com>
 <f67728d2-88d6-433d-74f4-671ca22599d5@phrozen.org>
 <CAF1oqRD6fe0Aif=1AFhTO-ccW-sVFPcgCdou2ksN9vEKFduqCg@mail.gmail.com>
From: John Crispin <john@phrozen.org>
Message-ID: <00a2f245-2a85-e597-e6a8-74269d0f31ae@phrozen.org>
Date: Wed, 9 Oct 2019 16:41:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAF1oqRD6fe0Aif=1AFhTO-ccW-sVFPcgCdou2ksN9vEKFduqCg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_074146_212212_A069F072 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] fstools: add a hook before mounting the
 overlay
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

Ck9uIDA5LzEwLzIwMTkgMTY6MzQsIEFsaW4gTsSDc3RhYyB3cm90ZToKPiBPbiBXZWQsIE9jdCA5
LCAyMDE5IGF0IDI6NTkgUE0gSm9obiBDcmlzcGluIDxqb2huQHBocm96ZW4ub3JnPiB3cm90ZToK
Pj4KPj4gT24gMDkvMTAvMjAxOSAxNDo0MSwgQWxpbiBOYXN0YWMgd3JvdGU6Cj4+PiBTY3JpcHRz
IGxvY2F0ZWQgaW4gdGhlIGRpcmVjdG9yeSAvbGliL21vdW50X3Jvb3Qgd2lsbCBiZSBleGVjdXRl
ZAo+Pj4gYmVmb3JlIG1vdW50aW5nIHRoZSBvdmVybGF5Lgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6
IEFsaW4gTmFzdGFjIDxhbGluLm5hc3RhY0BnbWFpbC5jb20+Cj4+IEhpLAo+Pgo+PiBzaG91bGQg
aXQgbm90IGJlIC9ldGMvbW91bnRfcm9vdC5kLyA/IHdoYXQgZG8geW91IG5lZWQgdGhpcyBmb3Ig
aWYgSSBtYXkKPj4gYXNrID8KPj4KPj4gZnVydGhlciBjb21tZW50cyBpbmxpbmUgLi4uCj4+Cj4+
ICAgICAgIEpvaG4KPj4KPiBIaSBKb2huLAo+Cj4gTXkgdGFyZ2V0IGlzIGR1YWwgYmFuayBhbmQg
SSBuZWVkIHRvIGNvcHkgcGFydHMgb2YgdGhlIGN1c3RvbWl6YXRpb24KPiBmcm9tIHRoZSBvbGQg
YmFuayBhZnRlciB1cGdyYWRlLgoKcGxlYXNlIGRvbnQgcmVtb3ZlIHRoZSBDQyB0b3QgaGUgbWFp
bGluZyBsaXN0CgpJIGRvbnQgdW5kZXJzdGFtZCB0aGlzIHBhcnQsIHNob3VsZCBzeXN1cGdyYWRl
IG5vdCBiZSBhYmxlIHRvIGhhbmRsZSAKdGhpcyBmb3IgeW91ID8KCj4gVG8gcmVzdW1lIHlvdXIg
b2JzZXJ2YXRpb25zOgo+ICAgLSBzY3JpcHRzIG11c3QgYmUgcmVsb2NhdGVkIHRvIC9ldGMvbW91
bnRfcm9vdC5kLwo+ICAgLSB1c2UgcnVucXVldWUgQVBJCj4gICAtIGltcGxlbWVudCB0aGUgbmVj
ZXNzYXJ5IGZ1bmN0aW9ucyBpbiBvdmVybGF5LmMKPiBXb3VsZCB0aGF0IGJlIE9LPyBJZiBzbywg
SSB3aWxsIGJlIGJhY2sgd2l0aCBhIDJuZCB2ZXJzaW9uIG9mIHRoaXMgcGF0Y2guCgpJIHdvdWxk
IGZpcnN0IGxpa2UgdG8gdW5kZXJzdGFuZCB0aGUgdXNlLWNhc2UKCiDCoMKgwqAgSm9obgoKPgo+
IEFsaW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9w
ZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
