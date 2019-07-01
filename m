Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 335E15C46D
	for <lists+openwrt-devel@lfdr.de>; Mon,  1 Jul 2019 22:47:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xcIHxObxuC1DPM83W0Xvh739/kfj8BuJ27b3Ha5Q+ao=; b=fQlWZsPwD5FStEIWnZeeZ0AOR
	tICaVXgp6EV93teUCr02RbzQ2SeKoTll9qU4AZb+/1iiyqCokoi1eNGCFlpTFjphPdz/nvrF7K8gH
	z9ZZAGoWfMrYAikOt4gBxvbOqCCgtq53nL7hyuOOf8WZht6NZRJ2yyezvPjQ6pfTIJHp+rq0scjft
	xMErinPXW3Yu6kGa/f5tCbuCJ7C4vU7OlIpp50KQkv6wfhB+YB/wn+6K2iHPmycgacRVaYT27iJWS
	jlHmTEOP4duUbHsolKSbRsz61KZj3YCt+hJ/z7Rvx/FjYO5bW0ql4nPBW2BkAJexmBU5Bskmg8dt9
	K1sDpNVtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi3Ci-0005Ec-0o; Mon, 01 Jul 2019 20:47:12 +0000
Received: from welho-filter2.welho.com ([83.102.41.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi3CS-0005Dr-3y
 for openwrt-devel@lists.openwrt.org; Mon, 01 Jul 2019 20:46:58 +0000
Received: from localhost (localhost [127.0.0.1])
 by welho-filter2.welho.com (Postfix) with ESMTP id 2442AC3F3B;
 Mon,  1 Jul 2019 23:40:38 +0300 (EEST)
X-Virus-Scanned: Debian amavisd-new at pp.htv.fi
Received: from welho-smtp1.welho.com ([IPv6:::ffff:83.102.41.84])
 by localhost (welho-filter2.welho.com [::ffff:83.102.41.24]) (amavisd-new,
 port 10024)
 with ESMTP id 0_IhiaDkxgwf; Mon,  1 Jul 2019 23:40:37 +0300 (EEST)
Received: from [192.168.1.180] (87-92-28-124.bb.dnainternet.fi [87.92.28.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128
 bits)) (No client certificate requested)
 by welho-smtp1.welho.com (Postfix) with ESMTPS id 4DBC47A;
 Mon,  1 Jul 2019 23:40:35 +0300 (EEST)
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <c2ab63c9-7a8c-9282-8188-a7e0d3244749@allycomm.com>
From: Hannu Nyman <hannu.nyman@welho.com>
Message-ID: <6ee92b20-5172-dcfd-a677-006c93296859@welho.com>
Date: Mon, 1 Jul 2019 23:40:34 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
In-Reply-To: <c2ab63c9-7a8c-9282-8188-a7e0d3244749@allycomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_134656_329611_D4D73418 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [83.102.41.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] build: sysupgrade: kernel: mtd: Image too SMALL
 to Restore Config
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
Reply-To: hannu.nyman@iki.fi
Cc: Jeff Kletsky <lede@allycomm.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

PiBUaGUgc21hbGxlciwgImZhaWxpbmciIGltYWdlIGNvbnRhaW5zIGluIC9kZXYvbXRkMjoKCj4g
MDAzZWViZDAgMDAgMDEgNTkgNWEgYmUgZTcgMjAgMDDCoCAwMCAwMCAwMCAwMCAwNCA4MCAwMCAw
MMKgIHwuLllaLi4gLi4uLi4uLi4ufAo+IDAwM2VlYmUwwqAgMDAgMDAgZGMgZWIgMjAgMDAgMDAg
MDDCoCAwMCAwMCBmZiBmZiBmZiBmZiBmZiBmZsKgIHwuLi4uIC4uLi4uLi4uLi4ufAo+IDAwM2Vl
YmYwwqAgZmYgZmYgZmYgZmYgZmYgZmYgZmYgZmbCoCBmZiBmZiBmZiBmZiBmZiBmZiBmZiBmZiB8
Li4uLi4uLi4uLi4uLi4uLnwKPiAqCj4gMDA0MDAwMDDCoCAxOSA4NSAyMCAwMyAwMCAwMCAwMCAw
Y8KgIGYwIDYwIGRjIDk4IDE5IDg1IGUwIDAxwqAgfC4uIC4uLi4uLmAuLi4uLi58Cj4gMDA0MDAw
MTDCoCAwMCAwMCAwMCAzNiA1ZCA0NCA0OCBmZcKgIDAwIDAwIDAwIDAxIDAwIDAwIDAwIDAwIHwu
Li42XURILi4uLi4uLi4ufAo+IDAwNDAwMDIwwqAgMDAgMDAgMDAgMDIgMDAgMDAgMDAgMDDCoCAw
ZSAwOCAwMCAwMCA5NyA4ZiAwYSA1YiB8Li4uLi4uLi4uLi4uLi4uW3wKPiAwMDQwMDAzMMKgIDMx
IGZmIDNkIGJjIDczIDc5IDczIDc1wqAgNzAgNjcgNzIgNjEgNjQgNjUgMmUgNzQgfDEuPS5zeXN1
cGdyYWRlLnR8CgoKVGhlIGZhaWx1cmUgbWF5IGFjdHVhbGx5IGJlIG9uIHRoZSBpbWFnZSBzeXN1
cGdyYWRlIGFwcGVuZGluZyBsb2dpYyBkdXJpbmcgCnN5c3VwZ3JhZGUvZmxhc2ggdGltZSwgbm90
IGluIHRoZSBib290IHRpbWUgbG9naWMuIFRoZSBpbnRlcmVzdGluZyBwYXJ0IGlzIAp0aGF0IHRo
ZSBhcHBlbmRlZCBzeXN1cGdyYWRlIGRhdGEgc3RhcnRzIGF0IDB4NDAwMDAwIGluIGJvdGggY2Fz
ZXMsIApldmVudGhvdWdoIHRoZSBmaXJtd2FyZSBpbWFnZSBlbmRzIGF0IDB4M2ViMzcxMCBpbiB0
aGUgZmFpbGluZyBjYXNlLiBJbiB0aGUgCmZhaWxpbmcgY2FzZSwgdGhlcmUgaXMgdGh1cyBhbiBl
eHRyYSA2NCBrQiBvZiBlbXB0eSAweGZmIGJlZm9yZSB0aGUgYXBwZW5kZWQgCnN5c3VwZ3JhZGUu
dGd6LCBhbmQgdGhhdCBjYXVzZXMgdGhlIHN5c3VwZ3JhZGUgYXJjaGl2ZSBkZXRlY3Rpb24gcHJv
YmxlbSBhdCAKdGhlIGJvb3QgdGltZSAoYXMgdGhlIGRldGVjdGlvbiBsb29rcyBwcm9wZXJseSBh
dCAweDNmMDAwMCBhbmQgZmluZHMgbm90aGluZykuCgpQb3NzaWJsZSBtaXNtYXRjaCBpbiB0aGUg
ZXJhc2VibG9jayBzaXplIGRldGVjdGlvbj8gTWF5YmUgdGhlIHN5c3VwZ3JhZGUgCmNyZWF0aW9u
IHNjcmlwdCBvciBwYWRqZmZzIHRoaW5rcyB0aGF0IHlvdSBoYXZlIGEgMTI4IGtCIGVyYXNlIGJs
b2NrIGluc3RlYWQgCm9mIDY0IGtCLCBhbmQgcGFkcyB1cCB0byAweDQwMDAwMCBpbnN0ZWFkIG9m
IDB4M2YwMDAwLCBzbyB0aGF0IHRoZWVyIGlzIG5vIApkZWFkY29kZSBpbmRpY2F0b3IgYXQgMHgz
ZjAwMDAuCgpZb3VyIHNlY29uZGFyeSBOQU5EIGZsYXNoIHNlZW1zIHRvIGhhdmUgMTI4IGtCIGJs
b2NrIHNpemU/CiDCoMKgwqDCoCBzcGktbmFuZCBzcGkwLjE6IDEyOCBNaUIsIGJsb2NrIHNpemU6
IDEyOCBLaUIsIHBhZ2Ugc2l6ZTogMjA0OCwgT09CIApzaXplOiAxMjgKCkFueSB3YXkgdGhhdCB5
b3UgZ2V0IGludG8gcGljdHVyZSBoZXJlIGFuZCBjcmVhdGUgY29uZnVzaW9uIGFib3V0IHRoZSBO
T1IgCmZsYXNoIGJsb2NrIHNpemU/wqAgRHVhbCBOT1IvTkFORCBmbGFzaCBzeXN0ZW1zIGFyZSBy
YXJlLCB3aGljaCBjb3VsZCBleHBsYWluIAp3aHkgbm9ib2R5IGhhcyBzdHVtYmxlZCBpbnRvIHRo
aXMgZWFybGllci4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53
cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0
LWRldmVsCg==
