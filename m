Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F92E1B1BF9
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Apr 2020 04:36:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OA1ksnIv9TvSmGZNIzKjZJXHLMxIOUuGB9rKt2e/j9c=; b=em+nlqI+CLMqq0
	53SyuXk+1PcT7MqZsm9S+Vkqj0YPqN+rBPahLdHEAaUQIPNFeLiI8Qv4nFRW1LMRc6vndh+dzOGJT
	3zagMbJdPlwi4voo7EEbHX5VLdwgDj3Vc7pTX6NeUummFNNreb+G8Md3YCQF3UNWMG/UqTkL523Bp
	8fAHegPfWLVffGIpMur8EN8s/9GHc5vV9o0285CYgVv/Lx1YwTbAVyPDzxG2KcvSaMLNI6+Aoh5eW
	sR3zkkhO8sWLmwMCEvaLVmv/LoA2aRMGMYwwQ1pg+SO1hBYvdZDQ1OivwUOrHy50xkSgB44BrXuab
	IpuOyhgzRKrNF5jh2y6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQilv-0003Km-Oh; Tue, 21 Apr 2020 02:36:27 +0000
Received: from mail.redfish-solutions.com ([45.33.216.244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQill-0003Fm-L6
 for openwrt-devel@lists.openwrt.org; Tue, 21 Apr 2020 02:36:19 +0000
Received: from macbook2.redfish-solutions.com (macbook2.redfish-solutions.com
 [192.168.1.39]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id 03L2aFKL017063
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 20 Apr 2020 20:36:15 -0600
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
In-Reply-To: <20200420071833.GA50609@meh.true.cz>
Date: Mon, 20 Apr 2020 20:36:14 -0600
Message-Id: <1B1C9093-5094-47C3-8578-FCCB2E5DE753@redfish-solutions.com>
References: <C9819030-4300-40CD-8FCE-A93314F1BD4B@redfish-solutions.com>
 <20200420071833.GA50609@meh.true.cz>
To: =?utf-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_193617_765429_C965DDCA 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Can't build x86_64 because of
 ntf_reject_ipv4.ko missing
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Cj4gT24gQXByIDIwLCAyMDIwLCBhdCAxOjE4IEFNLCBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVl
LmN6PiB3cm90ZToKPiAKPiBQaGlsaXAgUHJpbmRldmlsbGUgPHBoaWxpcHBfc3VieEByZWRmaXNo
LXNvbHV0aW9ucy5jb20+IFsyMDIwLTA0LTE5IDIxOjQ3OjE5XToKPiAKPiBIaSwKPiAKPj4gSSBq
dXN0IHJlYmFzZWQgdG8gb3BlbndydCBtYXN0ZXIgdG9kYXksIGFuZCB0cmllZCB0byByZWJ1aWxk
IGZyb20gc2NyYXRjaCBidXQgSeKAmW0gZ2V0dGluZzoKPiAKPiBTbyBwZXJoYXBzIHNvbWV0aGlu
ZyByZWxhdGVkIHRvIHlvdXIgbG9jYWwgY2hhbmdlcy9zZXR1cC90cmVlPyBCdWlsZGJvdHMgYXJl
Cj4gZ3JlZW4sIEkgZG9udCByZW1lbWJlciBzZWVpbmcgYnJva2VuIHg4Ni82NCBidWlsZCBhbmQg
SSBidWlsZCBhbmQgcnVuIHRlc3QgaXQKPiB3aXRoIGV2ZXJ5IGtlcm5lbCBidW1wLiBJdCdzIGlu
Y3JlbWVudGFsIGxvY2FsIGJ1aWxkIGFuZCBidWlsZCBmcm9tIHNjcmF0Y2ggb24KPiBDSS4KPiAK
PiDigJQgeW5lenoKCgpTbG93bHkgd29ya2luZyB0aHJvdWdoIHRoZXNlIGlzc3VlcywgYW5kIEni
gJltIHNlZWluZzoKCkNvbGxlY3RlZCBlcnJvcnM6CiAqIGNoZWNrX2RhdGFfZmlsZV9jbGFzaGVz
OiBQYWNrYWdlIGttb2QtaXB0LW5hdDYgd2FudHMgdG8gaW5zdGFsbCBmaWxlIC9ob21lL3BoaWxp
cHAvbGVkZS9idWlsZF9kaXIvdGFyZ2V0LXg4Nl82NF9tdXNsL3Jvb3QteDg2L2xpYi9tb2R1bGVz
LzUuNC4zMy94dF9NQVNRVUVSQURFLmtvCglCdXQgdGhhdCBmaWxlIGlzIGFscmVhZHkgcHJvdmlk
ZWQgYnkgcGFja2FnZSAgKiBrbW9kLWlwdC1uYXQKICogb3BrZ19pbnN0YWxsX2NtZDogQ2Fubm90
IGluc3RhbGwgcGFja2FnZSBrbW9kLWlwdC1uYXQ2LgpwYWNrYWdlL01ha2VmaWxlOjY1OiByZWNp
cGUgZm9yIHRhcmdldCAncGFja2FnZS9pbnN0YWxsJyBmYWlsZWQKbWFrZVsyXTogKioqIFtwYWNr
YWdlL2luc3RhbGxdIEVycm9yIDI1NQptYWtlWzJdOiBMZWF2aW5nIGRpcmVjdG9yeSAnL2hvbWUv
cGhpbGlwcC9sZWRlJwpwYWNrYWdlL01ha2VmaWxlOjEwODogcmVjaXBlIGZvciB0YXJnZXQgJy9o
b21lL3BoaWxpcHAvbGVkZS9zdGFnaW5nX2Rpci90YXJnZXQteDg2XzY0X211c2wvc3RhbXAvLnBh
Y2thZ2VfaW5zdGFsbCcgZmFpbGVkCm1ha2VbMV06ICoqKiBbL2hvbWUvcGhpbGlwcC9sZWRlL3N0
YWdpbmdfZGlyL3RhcmdldC14ODZfNjRfbXVzbC9zdGFtcC8ucGFja2FnZV9pbnN0YWxsXSBFcnJv
ciAyCgp3aGljaCBJIGd1ZXNzIGhhcyB0byBkbyB3aXRoOgoKcGhpbGlwcEB1YnVudHUxNjp+L2xl
ZGUkIGdyZXAgLXIgeHRfTUFTUVVFUkFERSBjb25maWcgQ29uZmlnLmluIGluY2x1ZGUgcGFja2Fn
ZS8gcnVsZXMubWsgTWFrZWZpbGUgdGFyZ2V0LwppbmNsdWRlL25ldGZpbHRlci5tazokKGV2YWwg
JChpZiAkKE5GX0tNT0QpLCQoY2FsbCBuZl9hZGQsSVBUX05BVDYsQ09ORklHX0lQNl9ORl9UQVJH
RVRfTUFTUVVFUkFERSwgJChQX1hUKXh0X01BU1FVRVJBREUsIGdlIDUuMiksKSkKaW5jbHVkZS9u
ZXRmaWx0ZXIubWs6JChldmFsICQoY2FsbCBuZl9hZGQsSVBUX05BVCxDT05GSUdfSVBfTkZfVEFS
R0VUX01BU1FVRVJBREUsICQoUF9YVCl4dF9NQVNRVUVSQURFLCBnZSA1LjIpKQpwaGlsaXBwQHVi
dW50dTE2On4vbGVkZSQgCgpXaHkgaXMgaXQgcGFydCBvZiBib3RoIHBhY2thZ2VzPyAgQW5kIHdo
eSBpcyBkb2VzIGl0IGFkZCBkaWZmZXJlbnQgZmxhZ3Mgd2hlbiBpdOKAmXMgYnVpbHQ/CgotUGhp
bGlwCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
