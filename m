Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B765C472
	for <lists+openwrt-devel@lfdr.de>; Mon,  1 Jul 2019 22:48:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	References:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/HcWjew1DUVu3a9L3odJpwSVK4cuxezgn2Lu/YQVQb8=; b=h0FFjSSfKQS5IiGuTEHuxmac7
	xdIXwrD/4zkPXTJLtVh3Nu77SXjldB6DfixaNqdL280wLIUTLv9s1goz2IRfquIR6VX8csVG0HSgX
	l4Bpxjtqu3NDdU6C3ZwiuasDbW10ym1vrvxi0zlXDpW7h8UCAFBZKSGOxOYAMw3takmfd5fPEtQTo
	E8QvfThO8DydopY4NjQvR+Urww1WYVtZ+Pk7Ytkb9mb3ReLNTmw4BJqriqze8PPlY3RoaWN0t8089
	6kbQEM0LU45Ob5sl7+C+aVgobf/km7ovZof8PdaDUmrwoxTUBcxjGGqmHFSrbIqj+OJybPOaJrvTR
	jH49uv5WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi3Dj-0005Yh-Gj; Mon, 01 Jul 2019 20:48:15 +0000
Received: from welho-filter4.welho.com ([83.102.41.26])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi3DY-0005Y2-Nk
 for openwrt-devel@lists.openwrt.org; Mon, 01 Jul 2019 20:48:06 +0000
Received: from localhost (localhost [127.0.0.1])
 by welho-filter4.welho.com (Postfix) with ESMTP id 28E6645516
 for <openwrt-devel@lists.openwrt.org>; Mon,  1 Jul 2019 23:47:57 +0300 (EEST)
X-Virus-Scanned: Debian amavisd-new at pp.htv.fi
Received: from welho-smtp3.welho.com ([IPv6:::ffff:83.102.41.86])
 by localhost (welho-filter4.welho.com [::ffff:83.102.41.26]) (amavisd-new,
 port 10024)
 with ESMTP id h9w3A_0l9UWs for <openwrt-devel@lists.openwrt.org>;
 Mon,  1 Jul 2019 23:47:56 +0300 (EEST)
Received: from [192.168.1.180] (87-92-28-124.bb.dnainternet.fi [87.92.28.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128
 bits)) (No client certificate requested)
 by welho-smtp3.welho.com (Postfix) with ESMTPS id 840632309
 for <openwrt-devel@lists.openwrt.org>; Mon,  1 Jul 2019 23:47:55 +0300 (EEST)
From: Hannu Nyman <hannu.nyman@iki.fi>
To: openwrt-devel@lists.openwrt.org
References: <c2ab63c9-7a8c-9282-8188-a7e0d3244749@allycomm.com>
Message-ID: <9b2a9cfc-2c9f-2117-c05d-1782f4a6f6a0@iki.fi>
Date: Mon, 1 Jul 2019 23:47:54 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
In-Reply-To: <c2ab63c9-7a8c-9282-8188-a7e0d3244749@allycomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_134804_943090_BFE597BA 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [83.102.41.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
cGdyYWRlIGFwcGVuZGluZyBsb2dpYyBkdXJpbmcgCnN5c3VwZ3JhZGUvZmxhc2ggdGltZSwgYW5k
IG5vdCBpbiB0aGUgYm9vdCB0aW1lIGxvZ2ljLiBUaGUgaW50ZXJlc3RpbmcgcGFydCAKaXMgdGhh
dCB0aGUgYXBwZW5kZWQgc3lzdXBncmFkZSBkYXRhIHN0YXJ0cyBhdCAweDQwMDAwMCBpbiBib3Ro
IGNhc2VzLCAKZXZlbnRob3VnaCB0aGUgZmlybXdhcmUgaW1hZ2UgZW5kcyBhdCAweDNlYjM3MTAg
aW4gdGhlIGZhaWxpbmcgY2FzZS4gSW4gdGhlIApmYWlsaW5nIGNhc2UsIHRoZXJlIGlzIHRodXMg
YW4gZXh0cmEgNjQga0Igb2YgZW1wdHkgMHhmZiBiZWZvcmUgdGhlIGFwcGVuZGVkIApzeXN1cGdy
YWRlLnRneiwgYW5kIHRoYXQgcG9zc2libHkgY2F1c2VzIHRoZSBzeXN1cGdyYWRlIGFyY2hpdmUg
ZGV0ZWN0aW9uIApwcm9ibGVtIGF0IHRoZSBib290IHRpbWUgKGFzIHRoZSBkZXRlY3Rpb24gbG9v
a3MgcHJvcGVybHkgYXQgMHgzZjAwMDAgYmFzZWQgCm9uIHRoZSBzcGxpdC1kZXRlY3RlZCBqZmZz
MiBzaXplIGFuZCBmaW5kcyBub3RoaW5nKS4KClBvc3NpYmxlIG1pc21hdGNoIGluIHRoZSBlcmFz
ZWJsb2NrIHNpemUgZGV0ZWN0aW9uPyBNYXliZSB0aGUgc3lzdXBncmFkZSAKY3JlYXRpb24gc2Ny
aXB0IG9yIHBhZGpmZnMgdGhpbmtzIHRoYXQgeW91IGhhdmUgYSAxMjgga0IgZXJhc2UgYmxvY2sg
aW5zdGVhZCAKb2YgNjQga0IsIGFuZCBwYWRzIHVwIHRvIDB4NDAwMDAwIGluc3RlYWQgb2YgMHgz
ZjAwMDAsIHNvIHRoYXQgdGhlZXIgaXMgbm8gCmRlYWRjb2RlIGluZGljYXRvciBhdCAweDNmMDAw
MC4KCllvdXIgc2Vjb25kYXJ5IE5BTkQgZmxhc2ggc2VlbXMgdG8gaGF2ZSAxMjgga0IgYmxvY2sg
c2l6ZT8KIMKgwqDCoMKgIHNwaS1uYW5kIHNwaTAuMTogMTI4IE1pQiwgYmxvY2sgc2l6ZTogMTI4
IEtpQiwgcGFnZSBzaXplOiAyMDQ4LCBPT0IgCnNpemU6IDEyOAoKQW55IHdheSB0aGF0IHlvdSBn
ZXQgaW50byBwaWN0dXJlIGhlcmUgYW5kIGNyZWF0ZSBjb25mdXNpb24gYWJvdXQgdGhlIE5PUiAK
Zmxhc2ggYmxvY2sgc2l6ZT/CoCBEdWFsIE5PUi9OQU5EIGZsYXNoIHN5c3RlbXMgYXJlIHJhcmUs
IHdoaWNoIGNvdWxkIGV4cGxhaW4gCndoeSBub2JvZHkgaGFzIHN0dW1ibGVkIGludG8gdGhpcyBl
YXJsaWVyLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
b3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9y
ZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZl
bAo=
