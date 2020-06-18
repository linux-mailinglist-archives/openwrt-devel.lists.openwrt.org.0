Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C1B1FEA95
	for <lists+openwrt-devel@lfdr.de>; Thu, 18 Jun 2020 07:04:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q5G4R08YsrLZBUy7f7cwQLee1abnGzZZmJt4mi4SeOs=; b=IgJaDsCahj2r+Cl60jadZUC7b
	us1QN3aLpoBxqgtlGf6wQnFpUBKIg1u0SB5LE2MGgwUcH7daMOaG3agZdDG0z6f90FvwFDTrvJ8nA
	1lWCxxa6Z7TpVHspmULeSwW5BDQH2hxqpFiiqrpEZ7L+U8ZlMbwBq/ztoPrQjysYuNHwE1C6ZP0kC
	6nRN0hS5/fIqn9HvCeOnyYEawIb5Pf+zsJLcq117+MX4Up/vQZiwbit+3C9sNsTUxxhqUhkfHPIW2
	r6tTmwMEYGC4f9JQBd/NsGUiPwiF2o7b+YgyfdvWjbd76ws19/yJ+8DsL5xVtf93T8pp/kRMZrMGs
	lloSnx+cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlmiO-0003S3-Rv; Thu, 18 Jun 2020 05:03:52 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlmiH-0003RO-JZ
 for openwrt-devel@lists.openwrt.org; Thu, 18 Jun 2020 05:03:47 +0000
Received: from mail.dev.tdt.de (localhost [IPv6:::1])
 by mail.dev.tdt.de (Postfix) with ESMTP id 93C9720072;
 Thu, 18 Jun 2020 05:03:28 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 18 Jun 2020 07:03:28 +0200
From: Martin Schiller <ms@dev.tdt.de>
To: Florian Eckert <fe@dev.tdt.de>
Organization: TDT AG
In-Reply-To: <640cd222ceed3d9a5969ba454c3b607a@dev.tdt.de>
References: <20200616082613.892-1-fe@dev.tdt.de>
 <00a001d643f4$c92fc2c0$5b8f4840$@adrianschmutzler.de>
 <640cd222ceed3d9a5969ba454c3b607a@dev.tdt.de>
Message-ID: <fbfe996b30a05f340b31911f98ec0aee@dev.tdt.de>
X-Sender: ms@dev.tdt.de
User-Agent: Roundcube Webmail/1.1.5
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=ham autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_220345_795769_6AEC6D8A 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
Subject: Re: [OpenWrt-Devel] [PATCH] lantiq: add dsl line_state mapping
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
Cc: openwrt-devel@lists.openwrt.org, mail@adrianschmutzler.de,
 Eckert.Florian@googlemail.com, dev@kresin.me, john@phrozen.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMjAyMC0wNi0xNyAxMjoyMSwgRmxvcmlhbiBFY2tlcnQgd3JvdGU6Cj4gSGkgQWRyaWFuLAo+
IAo+Pj4gVGhlIGxpbmVfc3RhdGUgb2YgdGhlIERTTCBjb25uZWN0aW9uIGlzIGRlc2NyaWJlZCBp
biB0aGUgc3lzdGVtIHZpYSBhCj4+PiBoZXhhZGVjaW1hbCB2YXJpYWJsZS4gV2l0aCB0aGlzIGNo
YW5nZSB0aGUgaGV4YWRlY2ltYWwgaXMgbWFwcGVkIHRvIGEKPj4+IGRlY2ltYWwgdmFsdWUuIFdp
dGggdGhpcyBjaGFuZ2UgaXQgaXMgbm93IHBvc3NpYmxlIHRvIHN0b3JlIHRoaXMgCj4+PiB2YWx1
ZSBpbiBhCj4+PiBkYXRhYmFzZSwgc28gdGhhdCBpdCBjYW4gYmUgZWFzaWx5IGV2YWx1YXRlZC4K
Pj4gCj4+IEludGVyZXN0aW5nIGZpbGUgdGhpcyBsYW50aXFfZHNsLnNoIC4uLgo+PiAKPiAKPiBU
aGF0wrRzIHByb2JhYmx5IHJpZ2h0IQo+IAo+PiBJJ20gd29uZGVyaW5nIHdoZXRoZXIgYWxsIG9m
IHRoaXMgcmVhbGx5IG5lZWQgdG8gYmUgaW4gdGhpcyBmaWxlLCBvcgo+PiB3aGV0aGVyIHN0dWZm
IGNhbiBiZSBtb3ZlZCB0byB0aGUgcGFja2FnZSBhY3R1YWxseSBkZWFsaW5nIHdpdGggaXQ/Cj4+
IFRoaXMgbWlnaHQgYWxzbyBtYWtlIGl0IGVhc2llciB0byBjaGFuZ2UgaXQgd2hlbiBuZWNlc3Nh
cnkuCj4+IAo+IAo+IFRoaXMgZmlsZSBpcyBzb3VyY2VkIHR3aWNlOgo+IC0gZHNsX2NvbnRyb2wg
b2YgcGFja2FnZSBsdHEtYWRzbC1hcHAgWzFdCj4gLSBkc2xfY29udHJvbCBvZiBwYWNrYWdlIGx0
cS12ZHNsLWFwcCBbMl0KPiAKPiBJZiB3ZSB0YWtlIHRoaXMgZnJvbSB0aGUgdGFyZ2V0IGZvbGRl
ciB0aGVuIHdlIGhhdmUgdG8gbWFrZSBvdXIgb3duCj4gcGFja2V0IGx0cS1kc2wtY29tbW9uIGZv
ciBleGFtcGxlLgo+IEFuZCB0aGUgcGFja2FnZXMgbHRxLWFkc2wtYXBwIGFuZCBsdHEtdmRzbC1h
cHAgY291bGQgZGVwZW5kIG9uIHRoaXMuCj4gCj4gV2hlbiB3ZSBjcmVhdGUgYSBuZXcgcGFja2Fn
ZSwgd2UgbWF5IGFsc28gd2FudCB0byBtb3ZlIG90aGVyIGZpbGVzCj4gZnJvbSB0aGUgdGFyZ2V0
IGRpcmVjdG9yeSB0byB0aGUgbmV3IHBhY2thZ2U/Cj4gCj4gLSBsYW50aXEuc2ggWzNdIFRoaXMg
aXMgc291cmNlZCBpbiAwMl9uZXR3b3JrIGZpbGVzIG9uIHRoZSBsYW50aXEgCj4gdGFyZ2V0cy4K
PiAtIGxlZF9kc2wuc2ggWzRdCj4gLSBwcHBvYS5zaCBbNV0KPiAtIHVjaS1kZWZhdWx0cyBbNl0K
PiAtIGRzbF9ub3RpZnkuc2ggWzddCj4gCj4gVGhlc2UgYXJlIGNhbmRpZGF0ZXMgdGhhdCBjb3Vs
ZCBhbHNvIG1vdmVkIHRvIHRoZSBuZXcgcGFja2FnZQoKVGhhdCdzIHdoYXQgSSd2ZSBhbHJlYWR5
IGRvbmUgaW4gbXkgd29ya2luZyB0cmVlIGZvciBWUlg1MTggc3VwcG9ydCBvbgpGQjc1MzAsIHRv
IGdldCB0aGlzIHNjcmlwdHMgYWxzbyBhdmFpbGFibGUgb24gb3RoZXIgdGFyZ2V0cyB0aGFuIGxh
bnRpcToKCmh0dHBzOi8vZ2l0aHViLmNvbS8zaGVhZGVkZGV2cy9vcGVud3J0L2NvbW1pdC85ZjQ1
Yzc1MGY5MWVlYTIzMGRjNjM4YzA5MzZmYjZlNzYxMjE0YWJiCgo+IAo+IEJlc3QgcmVnYXJkcwo+
IAo+IEZsb3JpYW4KPiAKPiBbMV0KPiBodHRwczovL2dpdGh1Yi5jb20vb3BlbndydC9vcGVud3J0
L2Jsb2IvbWFzdGVyL3BhY2thZ2UvbmV0d29yay9jb25maWcvbHRxLWFkc2wtYXBwL2ZpbGVzL2Rz
bF9jb250cm9sI0wxMQo+IFsyXQo+IGh0dHBzOi8vZ2l0aHViLmNvbS9vcGVud3J0L29wZW53cnQv
YmxvYi9tYXN0ZXIvcGFja2FnZS9uZXR3b3JrL2NvbmZpZy9sdHEtdmRzbC1hcHAvZmlsZXMvZHNs
X2NvbnRyb2wjTDExCj4gWzNdCj4gaHR0cHM6Ly9naXRodWIuY29tL29wZW53cnQvb3BlbndydC9i
bG9iL21hc3Rlci90YXJnZXQvbGludXgvbGFudGlxL2Jhc2UtZmlsZXMvbGliL2Z1bmN0aW9ucy9s
YW50aXEuc2gKPiBbNF0KPiBodHRwczovL2dpdGh1Yi5jb20vb3BlbndydC9vcGVud3J0L2Jsb2Iv
bWFzdGVyL3RhcmdldC9saW51eC9sYW50aXEvYmFzZS1maWxlcy9ldGMvaG90cGx1Zy5kL2RzbC9s
ZWRfZHNsLnNoCj4gWzVdCj4gaHR0cHM6Ly9naXRodWIuY29tL29wZW53cnQvb3BlbndydC9ibG9i
L21hc3Rlci90YXJnZXQvbGludXgvbGFudGlxL2Jhc2UtZmlsZXMvZXRjL2hvdHBsdWcuZC9kc2wv
cHBwb2Euc2gKPiBbNl0KPiBodHRwczovL2dpdGh1Yi5jb20vb3BlbndydC9vcGVud3J0L3RyZWUv
bWFzdGVyL3RhcmdldC9saW51eC9sYW50aXEvYmFzZS1maWxlcy9ldGMvdWNpLWRlZmF1bHRzCj4g
WzddCj4gaHR0cHM6Ly9naXRodWIuY29tL29wZW53cnQvb3BlbndydC9ibG9iL21hc3Rlci90YXJn
ZXQvbGludXgvbGFudGlxL2Jhc2UtZmlsZXMvc2Jpbi9kc2xfbm90aWZ5LnNoCj4gCj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBvcGVud3J0LWRldmVs
IG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPiBodHRwczov
L2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwg
bWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0
cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
