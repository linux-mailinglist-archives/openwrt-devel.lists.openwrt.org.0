Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B661C1CA6
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 May 2020 20:14:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FX/J8ze+aQYewhAJNCBN3U1W2mW4sRfB3j5ZxZvblxo=; b=jWdlJdorU3BZXk
	+GGkLxkhw5ukY9jnqIGsWFXDqIAm9waqeI/aFaFnKMIUhkaIjapi/EaJVFHA202lR/tqDiDV3fnDx
	CbkTgYZRSy3wXvvJN9iPvbdCL73nThtKBR9FB6hYTyJU0Un/AX+bqzU3PLHrA2j+PHIXhLVBhsYs4
	8gvRlhJkgm9CB6mfmlmlyilCuy+sJbDTIPvArICIBMUsQal3H2xFWCHCoD8JTJbc1RQYV0eZp5ebc
	xzE6ejSSjnNquvelhX5LoAsl411u38y2pZ+MPH8ZWomsNN3RMTwjy51NjKPf8fffVPs8B0HhKVwC6
	fSJyoprmB/jXCQIqO6GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUaAf-0000kz-Sn; Fri, 01 May 2020 18:13:57 +0000
Received: from mail.redfish-solutions.com ([45.33.216.244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUaAZ-0000js-8K
 for openwrt-devel@lists.openwrt.org; Fri, 01 May 2020 18:13:52 +0000
Received: from macbook2.redfish-solutions.com (macbook2.redfish-solutions.com
 [192.168.1.39]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id 041IDnqb021415
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 1 May 2020 12:13:49 -0600
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
In-Reply-To: <CAJLcKsG8ocNs7oO4xg-PKF2c-toiCE86eMZOF=217tiX9eJa8w@mail.gmail.com>
Date: Fri, 1 May 2020 12:13:49 -0600
Message-Id: <E6DA5077-D0C7-4D26-B2D0-DAF393B7BA3D@redfish-solutions.com>
References: <04320ECA-7526-4925-AB0A-A4211FE95852@redfish-solutions.com>
 <CAJLcKsG8ocNs7oO4xg-PKF2c-toiCE86eMZOF=217tiX9eJa8w@mail.gmail.com>
To: Hans Dedecker <dedeckeh@gmail.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_111351_380298_566C96B1 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] Routes disappearing when ip "ip link set down
 ethX" and bring it up again
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

PiAKPiAKPj4gT24gTWF5IDEsIDIwMjAsIGF0IDI6MDggQU0sIEhhbnMgRGVkZWNrZXIgPGRlZGVj
a2VoQGdtYWlsLmNvbT4gd3JvdGU6Cj4+IAo+PiAKPj4gT24gVGh1LCBBcHIgMzAsIDIwMjAgYXQg
OTozMiBQTSBQaGlsaXAgUHJpbmRldmlsbGUgPHBoaWxpcHBfc3VieEByZWRmaXNoLXNvbHV0aW9u
cy5jb20+IHdyb3RlOgo+PiBIaSBhbGwsCj4+IAo+PiBJIG5vdGljZWQgdGhhdCBpZiBldGg1IGlz
IG15IOKAnHdhbuKAnSBpbnRlcmZhY2UgYW5kIEkgZG86Cj4+IAo+PiAjIGlwIGxpbmsgc2V0IGRv
d24gZGV2IGV0aDUKPj4gCj4+IG1ha2Ugc29tZSBmaXJld2FsbCBjaGFuZ2VzLCB0aGVuIGRvOgo+
PiAKPj4gIyBpcCBsaW5rIHNldCB1cCBkZXYgZXRoNQo+PiAKPj4gdGhlbiBteSByb3V0ZXMgZG9u
4oCZdCBnZXQgcmVwb3B1bGF0ZWQuIAo+PiAKPj4gSSB0aG91Z2h0IHRoYXQgcHJvY2QgaW5zdGFs
bGVkIHRyaWdnZXJzIHNvIHRoYXQgaWYgYW4gaW50ZXJmYWNlIGZsYXBzLCB0aGVuIGEgaGVscGVy
IHdvdWxkIHJ1biAoaW4gdGhpcyBjYXNlIHRoZSBuZXR3b3JrIGhlbHBlcikuCj4gCj4gTmV0aWZk
IGlzIHJlc3BvbnNpYmxlIGZvciBtYW5hZ2VtZW50IG9mIElQIHJvdXRlcy9hZGRyZXNzZXM7IHNv
IGlmIGEgbGluayBpcyBmb3JjZWQgZG93biBieSBhbiBleHRlcm5hbCBjb21tYW5kIG5ldGlmZCB3
aWxsIG5vdCBiZSBhd2FyZSBhbmQgd2lsbCBub3QgcmUtaW5zdGFsbCBJUCByb3V0ZXMvYWRkcmVz
c2VzCj4gWW91IGNhbiBlYXNpbHkgYnJpbmcgZG93biBhbiBpbnRlcmZhY2UgYnkgdXNpbmcgaWZk
b3duIHdoaWNoIGlzIGhhbmRsZWQgYnkgbmV0aWZkCgoKT2theSwgSSBmaWd1cmVkIHRoYXQgbmV0
aWZkIGxpc3RlbmVkIGZvciBORVRMSU5LIG1lc3NhZ2VzIGFib3V0IHRoZSBpbnRlcmZhY2VzIGNo
YW5naW5nIHN0YXRl4oCmCgotUGhpbGlwCgoKPiAKPj4gCj4+IAo+PiBIYW5zCj4+IAo+PiBJcyB0
aGlzIG5vdCBoYXBwZW5pbmc/Cj4+IAo+PiBUaGFua3MsCj4+IAo+PiAtUGhpbGlwCj4+IAo+IAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1k
ZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczov
L2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
