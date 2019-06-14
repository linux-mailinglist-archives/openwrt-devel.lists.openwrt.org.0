Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C26146C90
	for <lists+openwrt-devel@lfdr.de>; Sat, 15 Jun 2019 00:54:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9Bt576OF8aooZ2cjBsNyoaMY0sCuTi5qbAQfkQBgRoY=; b=YkanmIAn9gbt/o
	CetUbTpe9tU+w2B8Jp1rZyz/wmW24aDVR5U+/HBZjopzytZVFi7siN5c4Z19UwBH20zn68K4upieg
	dAd9uEkXYH1nI1fNuxd8iwEhHX6HLGGFeq7GP6lQmreeGILyMgUmGYYzFBZwDBn/6vLhk6CgflVIo
	7ziBsqbh95Y/o3wleupWJm+vqJT7/isK/bCM2RQZuwQJKNDcD1NaKx5ssXCw1kXGiU1DFNj6BZNuU
	VLJ5+p0eY2E9HrSXuPJd2JgjrQeYd8N97nhbFQ4oYdMBX2KhWe6E91jKurK7gFDJmjI5P3bjCDwWS
	ThWITgJca86Ig+9vU3vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbv5w-0004iJ-6g; Fri, 14 Jun 2019 22:54:52 +0000
Received: from pb-smtp21.pobox.com ([173.228.157.53])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbv5p-0004ht-1G
 for openwrt-devel@lists.openwrt.org; Fri, 14 Jun 2019 22:54:46 +0000
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
 by pb-smtp21.pobox.com (Postfix) with ESMTP id 327116AC9E;
 Fri, 14 Jun 2019 18:54:40 -0400 (EDT)
 (envelope-from daniel.santos@pobox.com)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=from:to
 :subject:message-id:date:mime-version:content-type
 :content-transfer-encoding; s=sasl; bh=iEgu6rTrAwd8u7gHNlrBkvryq
 eY=; b=YZ+lqTkeSkugtzSRvmxoInb2WwIBaNeAKis6wvs5sax3UuASMTARKrO78
 P5yvFT1KZ8XX4jXQq1s1woMt67LvL0slc9WsBFLaRV670DDsMELp58+RsnvYX5Az
 G4WHxzCRim3C4UNQGvfPTCMhIQoxecrxWlF1NSmbxtcATSdViQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=pobox.com; h=from:to:subject
 :message-id:date:mime-version:content-type
 :content-transfer-encoding; q=dns; s=sasl; b=YAU6IfALxo5kQq1Q9H1
 przLHl5bCsei31zJG0kDUgeURf+MTW3PaS4nNuv7N538oYK/eDhH+9bXbOtdPaRw
 upVRP1EAx3fyODMDAk+lx3Un7tClzbCMSTo3GJ4MvSfQn4abuvA+fnZkKLHrK1y7
 f93XH/9MVxEcf5Eu6e+NSUDo=
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
 by pb-smtp21.pobox.com (Postfix) with ESMTP id 2A8176AC9D;
 Fri, 14 Jun 2019 18:54:40 -0400 (EDT)
 (envelope-from daniel.santos@pobox.com)
Received: from [192.168.1.134] (unknown [70.142.57.80])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by pb-smtp21.pobox.com (Postfix) with ESMTPSA id 4812A6AC9C;
 Fri, 14 Jun 2019 18:54:37 -0400 (EDT)
 (envelope-from daniel.santos@pobox.com)
From: Daniel Santos <daniel.santos@pobox.com>
To: Daniel Golle <daniel@makrotopia.org>, Felix Fietkau <nbd@nbd.name>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>,
 John Crispin <blogic@openwrt.org>, Michael Lee <igvtee@gmail.com>,
 netdev@vger.kernel.org
Message-ID: <2766c2b3-3262-78f5-d736-990aaa385eeb@pobox.com>
Date: Fri, 14 Jun 2019 17:53:02 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-Pobox-Relay-ID: 62C4A350-8EF7-11E9-AA41-8D86F504CC47-06139138!pb-smtp21.pobox.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_155445_384174_8EAC8C3E 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [173.228.157.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] Understanding Ethernet Architecture (I/O --> MDIO
 --> MII vs I/O --> MAC) for mt7620 (OpenWRT)
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGVsbG8sCgpJJ20gc3RpbGwgZmFpcmx5IG5ldyB0byBFdGhlcm5ldCBkcml2ZXJzIGFuZCB0aGVy
ZSBhcmUgYSBsb3Qgb2YKaW50ZXJlc3RpbmcgcGllY2VzLsKgIFdoYXQgSSBuZWVkIGhlbHAgd2l0
aCBpcyB1bmRlcnN0YW5kaW5nIE1ESU8gLS0+CihSKU1JSSB2cyBkaXJlY3QgSS9PIHRvIHRoZSBN
QUMgKGUuZy4sIHZpYSBpb3JlYWQzMiwgaW93cml0ZTMyKS7CoCBXaHkgaXMKdGhlcmUgbm90IGFs
d2F5cyBhIHN0cnVjdCBtaWlfYnVzIHRvIHRhbGsgdG8gdGhpcyBoYXJkd2FyZT/CoCBJcyBpdApi
ZWNhdXNlIHRoZSBQSFkgYW5kL29yIE1BQyBoYXJkd2FyZSBzb21ldGltZXMgYXR0YWNoZWQgdmlh
IGFuIE1ESU8KZGV2aWNlIGFuZCBzb21ldGltZXMgZGlyZWN0bHkgdG8gdGhlIEkvTyBidXM/wqAg
T3IgZG9lcyBzb21lIHR5cGUgb2YKImluZGlyZWN0IGFjY2VzcyIgbmVlZCB0byBiZSBlbmFibGVk
IGZvciB0aGF0IHRvIHdvcms/CgpJIG1pZ2h0IGJlIHRyeWluZyB0byBkbyBzb21ldGhpbmcgdGhh
dCdzIHVubmVjZXNzYXJ5IGhvd2V2ZXIsIEknbSBub3QKc3VyZSB5ZXQuwqAgSSBuZWVkIHRvIGFk
ZCBmdW5jdGlvbmFsaXR5IHRvIGNoYW5nZSBhIHBvcnQncwphdXRvLW5lZ290aWF0ZSwgZHVwbGV4
LCBldGMuwqAgSSdtIGFkZGluZyBpdCB0byB0aGUgc3djb25maWcgZmlyc3QgYW5kCnRoZW4gd2ls
bCBsb29rIGF0IGFkZGluZyBpdCBmb3IgRFNBIGFmdGVyd2FyZHMuwqAgV2hlbiBJIHJ1biAic3dj
b25maWcKZGV2IHN3aXRjaDAgcG9ydCAwIHNob3ciLCB0aGUgY3VycmVudCBtdDc1MzAgLyBtdDc2
MjAgZHJpdmVyIGlzIHF1ZXJ5aW5nCnRoZSBNQUMgc3RhdHVzIHJlZ2lzdGVyIChhdCBiYXNlICsg
MHgzMDA4ICsgMHgxMDAgKiBwb3J0LCBkZXNjcmliZWQgb24KcGFnZXMgMzIzLTMyNCBvZiB0aGUg
TVQ3NjIwIFByb2dyYW1taW5nIEd1aWRlKSwgc28gSSBpbXBsZW1lbnRlZCB0aGUKInNldCIgZnVu
Y3Rpb25hbGl0eSBieSBtb2RpZnlpbmcgdGhlIE1BQydzIGNvbnRyb2wgcmVnaXN0ZXIgKG9mZnNl
dAoweDMwMDAgb24gcGFnZSAzMjEpLCBidXQgaXQgZG9lc24ndCBzZWVtIHRvIGNoYW5nZSBhbnl0
aGluZy7CoCBTbyBJCmZpZ3VyZWQgbWF5YmUgSSBuZWVkIHRvIG1vZGlmeSB0aGUgTUlJIGludGVy
ZmFjZSdzIGNvbnRyb2wgcmVnaXN0ZXIgZm9yCnRoZSBwb3J0IChwYWdlIDM1MCksIGJ1dCB1cG9u
IGRlYnVnZ2luZyBJIGNhbiBzZWUgdGhhdCB0aGUgc3RydWN0Cm1paV9idXMgKmJ1cyBtZW1iZXIg
aXMgTlVMTC4KClNvIHNob3VsZCBJIGJlIGFibGUgdG8gY2hhbmdlIGl0IHZpYSB0aGUgTUFDJ3Mg
Y29udHJvbCByZWdpc3RlciBhbmQKc29tZXRoaW5nIGVsc2UgaXMgd3Jvbmc/wqAgV2h5IGlzIHRo
ZXJlIG5vIHN0cnVjdCBtaWlfYnVzP8KgIENhbiBJIHRhbGsgdG8KdGhlIE1JSSBoYXJkd2FyZSBp
biBzb21lIG90aGVyIHdheT8KClRoYW5rcywKRGFuaWVsCgpodHRwczovL2Rvd25sb2FkLnZpbGxh
Z2V0ZWxjby5vcmcvaGFyZHdhcmUvTVQ3NjIwL01UNzYyMF9Qcm9ncmFtbWluZ0d1aWRlLnBkZgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1k
ZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczov
L2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
