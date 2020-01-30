Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81DC614E589
	for <lists+openwrt-devel@lfdr.de>; Thu, 30 Jan 2020 23:31:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kAnU/WuIvjcTDY1N3Zh3HIRCDZ99MD3f1XAfSa+hX1k=; b=q8YVAUHTrC10wj
	0iWrmEoT/OO2nR8iTdoXxhnQ+LMU5tt92QGSIjBffa/OcfqTUkrxVuDrzFZV0BEjoG8YYKO9/YpFa
	ewaoCMoQdEyc5sch2W0hVyt9gXTZvxs1h7lIHrFbHLl1yG0aeRTCvop5NlKO7khXVpfIh7uDbNyaT
	6W0moEpJ7oDjcYLehnnDH3DT+8RDYKH9stOtWRrRByhTunA7Nsa1aHRUpq4gyfBL2YewuCmf2BngW
	x3nFSwqGsl6vMsW9sgCPRwO0skp3KUobQiDGkpXQKGb28d9s4utBxN8FqXz5qCr9bGQMhYpYInBDx
	XinvMh8t5tpaA0DPyDmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixIL4-00025W-Ns; Thu, 30 Jan 2020 22:31:06 +0000
Received: from mx4.wp.pl ([212.77.101.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixIKw-00024f-Ex
 for openwrt-devel@lists.openwrt.org; Thu, 30 Jan 2020 22:31:00 +0000
Received: (wp-smtpd smtp.wp.pl 3224 invoked from network);
 30 Jan 2020 23:30:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1580423448; bh=R7WaisN8BDweiMCyf4k/Di2GcB1lSs5lWuVWyef6sL4=;
 h=From:To:Cc:Subject;
 b=QukqIrZUAzqZWDcN/jyqZKPfM3SV8QKVwxss2S15AnlrRWfdWKSLjCS/kAScelerZ
 mJyyNNNgtTkcDciaEVnqwyuau4uTFAc7F4U4vv5jNhRCpEegKcpR9lKDlogETZvc3V
 QO/Cxwsqc/D9bQ0l8x6U9JCe6deL68qqlGk1N+Qs=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <roger.pueyo@guifi.net>; 30 Jan 2020 23:30:48 +0100
Date: Thu, 30 Jan 2020 23:30:39 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
Message-ID: <20200130233039.09e859de@kosmio.komorska>
In-Reply-To: <bfed731f-4a06-b3c9-3292-f3a7506ffb63@guifi.net>
References: <mailman.27217.1580134584.2486.openwrt-devel@lists.openwrt.org>
 <ed6f8dd3-fe44-62e1-f631-4842ff33d373@ncentric.com>
 <bbbdb47a-a1f1-9dd0-1a53-05ab93f218c2@guifi.net>
 <mailman.27646.1580316070.2486.openwrt-devel@lists.openwrt.org>
 <20200129200716.44ef140a@kosmio.komorska>
 <bfed731f-4a06-b3c9-3292-f3a7506ffb63@guifi.net>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 1de629f9549df5ad54b3ab42e5e6cca9
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [YbOk]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_143058_866443_638B400B 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [michal.cieslakiewicz[at]wp.pl]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] ath79: NAND bad eraseblocks in MikroTik
 RouterBOARD 922UAGS-5HPacD
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
Cc: openwrt-devel@lists.openwrt.org,
 Koen Vandeputte <koen.vandeputte@ncentric.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gVGh1LCAzMCBKYW4gMjAyMCAyMTo0MDo0MyArMDEwMAoiUm9nZXIgUHVleW8gQ2VudGVsbGVz
IHwgR3VpZmkubmV0IiA8cm9nZXIucHVleW9AZ3VpZmkubmV0PiB3cm90ZToKCj4gSGkgTWljaGFs
LAo+IAo+IEVsIDI5LzEvMjAgYSBsZXMgMjA6MDcsIE1pY2hhbCBDaWVzbGFraWV3aWN6IGhhIGVz
Y3JpdDoKPiA+IFBsZWFzZSB0cnkgYWRkaW5nICdxY2EsbmFuZC1zd2FwLWRtYTsnIHRvICcmbmFu
ZCcgc2VjdGlvbiBpbgo+ID4gcm91dGVyIGR0cyBmaWxlLiBUaGlzIGluIHRoZW9yeSBzaG91bGQg
Zml4IGVuZGlhbm5lc3MgcHJvYmxlbS4gIAo+IFllcywgdGhhdCB3b3JrZWQhIEkgYWxzbyBoYWQg
dG8gc2V0IG5hbmQtZWNjLW1vZGUgPSAic29mdCI7LCBhcwo+IHR3by1ieXRlIGJsb2NrcyB3ZXJl
IHN0aWxsIHN3YXBwZWQuCj4gPiBCeSBsb29raW5nIGF0IEMgZmlsZSwgSSBoYXZlIGFsc28gZm91
bmQgdGhhdCB0aGlzIHJvdXRlciB1c2VzCj4gPiBtb2RlbC1zcGVjaWZpYyBhdGg3OV9uZmNfc2V0
X3NjYW5fZml4dXAoKSByb3V0aW5lIC0gYSBmdW5jdGlvbmFsaXR5Cj4gPiB0aGF0IGlzIG5vdCBp
bXBsZW1lbnRlZCBpbiBhdGg3OSwgYmVjYXVzZSB0aGVyZSB3YXMgbm8gbmVlZCBmb3Igc3VjaAo+
ID4gcXVpcmtzLCBhdCBsZWFzdCBub3QgdW50aWwgbm93LiAgCj4gCj4gQ291bGQgdGhpcyBiZSBy
ZWxhdGVkIHRvIHRoZSBmYWN0IHRoYXQgdGhlIGRldGVjdGVkIGNoaXAgaGFzIDEyOCBNaUIsCj4g
YnV0IGl0IGlzIG9ubHkgdXNhYmxlIHVwIHRvIDY0IE1pQj8KPiAKPiBbwqDCoMKgIDAuNzc0NzYw
XSBuYW5kOiBTYW1zdW5nIE5BTkQgMTI4TWlCIDMsM1YgOC1iaXQKPiBbwqDCoMKgIDAuNzc5NDgw
XSBuYW5kOiAxMjggTWlCLCBTTEMsIGVyYXNlIHNpemU6IDEyOCBLaUIsIHBhZ2Ugc2l6ZToKPiAy
MDQ4LCBPT0Igc2l6ZTogNjQKPiBbwqDCoMKgIDAuNzg3MTc4XSBTY2FubmluZyBkZXZpY2UgZm9y
IGJhZCBibG9ja3MKPiBbwqDCoMKgIDAuNzk3MDYxXSByYW5kb206IGZhc3QgaW5pdCBkb25lCj4g
W8KgwqDCoCAwLjkyNzExN10gMyBmaXhlZC1wYXJ0aXRpb25zIHBhcnRpdGlvbnMgZm91bmQgb24g
TVREIGRldmljZQo+IGFyOTM0eC1uYW5kIFvCoMKgwqAgMC45MzQwMjRdIENyZWF0aW5nIDMgTVRE
IHBhcnRpdGlvbnMgb24gImFyOTM0eC1uYW5kIjoKPiBbwqDCoMKgIDAuOTM5MzM4XSAweDAwMDAw
MDAwMDAwMC0weDAwMDAwMDA0MDAwMCA6ICJib290ZXIiCj4gW8KgwqDCoCAwLjk0NTA5NV0gMHgw
MDAwMDAwNDAwMDAtMHgwMDAwMDA0MDAwMDAgOiAia2VybmVsIgo+IFvCoMKgwqAgMC45NTA4OThd
IDB4MDAwMDA0MDAwMDAwLTB4MDAwMDBiYzAwMDAwIDogInViaSIKPiBbwqDCoMKgIDAuOTU1Njcz
XSBtdGQ6IHBhcnRpdGlvbiAidWJpIiBleHRlbmRzIGJleW9uZCB0aGUgZW5kIG9mIGRldmljZQo+
ICJhcjkzNHgtbmFuZCIgLS0gc2l6ZSB0cnVuY2F0ZWQgdG8gMHg0MDAwMDAwCj4gCj4gS2luZCBy
ZWdhcmRzLAo+IAo+IFJvZ2VyCj4gCj4gCgpIZWxsbyBSb2dlciwKCkdsYWQgdG8gc2VlIHByb2dy
ZXNzIGluIHlvdXIgc3RydWdnbGUhIAoKJ3FjYSxuYW5kLXN3YXAtZG1hJywgbG9va2luZyBhdCB0
aGUgZHJpdmVyIGNvZGUsIHdvcmtzIGZvciAzMi1iaXQgd29yZHMKc28gMTYtYml0IHN3YXBzIGFy
ZSBraW5kYSB3ZWlyZC4uLiBFQ0MgbW9kZSBpbiBhdGg3OSBkZWZhdWx0cyB0byBIVwp3aGlsZSBm
b3IgYXI3MXh4IGluZGVlZCBpdCBtYXkgYmUgc29mdHdhcmUtY29udHJvbGxlZC4KCklNSE8sIHRo
ZXJlIGlzIHN0aWxsIHNvbWUgd29yayB0byBiZSBkb25lIG9uIGFyOTM0eC1uYW5kIGRyaXZlciBz
aWRlLiBJCndhcyBwb3J0aW5nIGl0IHRvIGF0aDc5IGZvciBXTkRSNDMwMCwgdGhhdCByb3V0ZXIg
ZG9lcyBub3QgcmVxdWlyZSBhbnkKc3BlY2lhbCBwcm9ncmFtbWluZywgYW5kIEknbSBubyBleHBl
cnQgaW4gTkFORCBjb250cm9sbGVycy4gQW55d2F5LApjb2RlIHRoYXQgaGFzIGJlZW4gbGVmdCBi
YWNrIGluIGFyNzF4eCBtYXkgaGF2ZSB0byBiZSBpbmNsdWRlZCBoZXJlIGZvcgp5b3VyIFJvdXRl
cmJvYXJkLiBBcyBJJ3ZlIHdyaXR0ZW4gYmVmb3JlLCBtYWNoLXJiKi5jIGZpbGVzIGluIGFyNzF4
eAp0cmVlIHNldCBzb21lIE9PQiBFQ0MgcmVnaW9ucywgYXBwYXJlbnRseSB0aGF0IGZ1bmN0aW9u
YWxpdHkgc2hvdWxkIGJlCmludHJvZHVjZWQgYXMgYW5vdGhlciBxY2Etc3BlY2lmaWMgZHRzIHBy
b3BlcnR5LiAKV2l0aCB0aGlzIGNvZGUgaW4gcGxhY2UsIGhvcGVmdWxseSB5b3Ugd2lsbCBiZSBh
YmxlIHRvIHVzZSBhbGwgMTI4Ck1pQiBmbGFzaCBzcGFjZS4KCkJlc3QgcmVnYXJkcwpNaWNoYWwK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
