Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C053139FF
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 May 2019 15:19:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ofh7xHk1MLJD7rfz2lOC2Kj6TtP3392RdOEMro/dXbs=; b=hZL1/bgj4YBis0
	ox6C6nwe4TJVPXPflYDr6JuzPbdovstooL6vSUigAi6UhAswP5VL/n0McgJYSH5sYwRW2ewy0M5Z8
	pq6pGLdE3sht40RyKv7BYCDTXt1gkmxph4zNgJVXeYYkSp9UxcuRvHiDAxzvjKn3e+Ri+WT7iInnk
	3xznmBQXT73HazEv1KThqA2c5jQ50n0McG8juq6i9ysbFaseqk2M1ExC+xiwydhQC/G5m4+MbYQhw
	LiZ3ZS/l/Oay2U0K10fxWRDhJ0Mw7peTkia5DtKMdsievVRvZsqMw7ByHDgxVJJIPuXuMThvptGoW
	1zb8m6xY7zJ5ElN+Qb9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMuZ4-0003fb-3Y; Sat, 04 May 2019 13:18:54 +0000
Received: from mx-out.tlen.pl ([193.222.135.158])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMuYx-0003eo-SK
 for openwrt-devel@lists.openwrt.org; Sat, 04 May 2019 13:18:49 +0000
Received: (wp-smtpd smtp.tlen.pl 29091 invoked from network);
 4 May 2019 15:18:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1556975925; bh=BqUafszwqNSCcGGNaZQ2ajAnT6rqjI0qx+DLT7ydBmM=;
 h=Subject:To:From;
 b=Fuj0bcwBFcRgnP/IWzBCe1iUgwzzQf96/vw8H5RRM11ikRkYbUbJgM7EN5V79mhJx
 Ip8hFrH+e010vZDa+YHO/kvDfWRJnBWDBnxFZ+58/X9pqtH8Uuic8zp90pzhxoleaR
 blMku1bwsnsP67LHZTVYFJMvf8EIpFPerENPnDDA=
Received: from 131.ip-164-132-48.eu (HELO [10.8.0.6])
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 4 May 2019 15:18:45 +0200
To: Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org
References: <20190501174224.19089-1-tomek_n@o2.pl>
 <20190501174224.19089-9-tomek_n@o2.pl>
 <8442ddee-acfb-1f91-9b01-248d82a527e4@hauke-m.de>
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <02231597-09ab-91ac-8ec4-9690954095c6@o2.pl>
Date: Sat, 4 May 2019 15:18:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <8442ddee-acfb-1f91-9b01-248d82a527e4@hauke-m.de>
Content-Language: en-US
X-WP-MailID: f53077c4bf7c0847033c1a43f76db680
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [gSNF]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_061848_082124_46EEE320 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 8/8] mvebu: add images for additional
 ESPRESSObin boards
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

VyBkbml1IDA0LjA1LjIwMTkgb8KgMDA6MTEsIEhhdWtlIE1laHJ0ZW5zIHBpc3plOgo+IE9uIDUv
MS8xOSA3OjQyIFBNLCBUb21hc3ogTWFjaWVqIE5vd2FrIHdyb3RlOgo+PiBUaGlzIGNvbW1pdCBh
ZGRzIHN1cHBvcnQgZm9yIGRpZmZlcmVudCBpdGVyYXRpb25zIG9mIEVTUFJFU1NPYmluLgo+PiBU
aGUgYWRkZWQgdmFyaWFudHMgYXJlOgo+Pgo+PiBFU1BSRVNTT2JpbiB3aXRoIHNvbGRlcmVkIGVN
TUMsCj4+Cj4+IEVTUFJFU1NPYmluIFY3LCBjb21wYXJlZCB0byBWNSBzb21lIHBhc3NpdmUgZWxl
bWVudHMgY2hhbmdlZCBhbmQgZXRoZXJuZXQKPj4gcG9ydHMgbGFiZWxzIHBvc2l0aW9ucyBoYXZl
IGJlZW4gcmV2ZXJzZWQsCj4+Cj4+IEVTUFJFU1NPYmluIFY3IHdpdGggc29sZGVyZWQgZU1NQy4K
Pj4KPj4gUGxlYXNlIHJlZmVyIHRvOgo+PiA1ODRkN2M1ICgibXZlYnU6IG5ldyBzdWJ0YXJnZXQg
Y29ydGV4IEE1MyIpCj4+IGZvciBpbnN0cnVjdGlvbiBob3cgdG8gYm9vdCBPcGVuV3J0IGltYWdl
IHBsYWNlZCBvbiBTRCBjYXJkLiBJdCBpcwo+PiBhZHZpc2VkIGZvciBvd25lcnMgb2YgVjUgYW5k
IHByZXZpb3VzIHRvIHVwZ3JhZGUgYm9vdGxvYWRlciBiYXNlZCBvbgo+PiBVLUJvb3QgMjAxNS4w
MSwgdG8gdGhlIGxhdGVzdCB2ZXJzaW9uIGF2YWlsYWJsZSBhdDoKPj4gaHR0cDovL2VzcHJlc3Nv
YmluLm5ldC90ZWNoLXNwZWMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFRvbWFzeiBNYWNpZWogTm93
YWsgPHRvbWVrX25AbzIucGw+Cj4+IC0tLQo+PiAgLi4uL21hcnZlbGwvYXJtYWRhLTM3MjAtZXNw
cmVzc29iaW4tZW1tYy5kdHMgIHwgMjggKysrKysrKysrKysKPj4gIC4uLi9hcm1hZGEtMzcyMC1l
c3ByZXNzb2Jpbi12Ny1lbW1jLmR0cyAgICAgICB8IDQzICsrKysrKysrKysrKysrKysKPj4gIC4u
Li9tYXJ2ZWxsL2FybWFkYS0zNzIwLWVzcHJlc3NvYmluLXY3LmR0cyAgICB8IDMxICsrKysrKysr
KysrKwo+PiAgdGFyZ2V0L2xpbnV4L212ZWJ1L2ltYWdlL2NvcnRleC1hNTMubWsgICAgICAgIHwg
MjQgKysrKysrKysrCj4+ICAuLi5sLWFybWFkYTM3eHgtQWRkLWVtbWMtc2Rpby1waW5jdHJsLWQu
cGF0Y2ggfCA0MCArKysrKysrKysrKysrKysKPj4gIC4uLmwtYXJtYWRhLTM3eHgtRW5hYmxlLWVt
bWMtb24tZXNwcmVzcy5wYXRjaCB8IDQ5ICsrKysrKysrKysrKysrKysrKysKPj4gIC4uLmRhLTM3
MjAtZXNwcmVzc29iaW4tY29ycmVjdC1zcGktbm9kZS5wYXRjaCB8ICAyICstCj4+ICAuLi5sLWFy
bWFkYS0zNzIwLWVzcHJlc3NvYmluLWFkZC1wb3J0cy0ucGF0Y2ggfCAyNiArKysrKysrKysrCj4+
ICA4IGZpbGVzIGNoYW5nZWQsIDI0MiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+ICBj
cmVhdGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L212ZWJ1L2ZpbGVzLTQuMTQvYXJjaC9hcm02
NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLWVzcHJlc3NvYmluLWVtbWMuZHRzCj4+ICBj
cmVhdGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L212ZWJ1L2ZpbGVzLTQuMTQvYXJjaC9hcm02
NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLWVzcHJlc3NvYmluLXY3LWVtbWMuZHRzCj4+
ICBjcmVhdGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L212ZWJ1L2ZpbGVzLTQuMTQvYXJjaC9h
cm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLWVzcHJlc3NvYmluLXY3LmR0cwo+PiAg
Y3JlYXRlIG1vZGUgMTAwNjQ0IHRhcmdldC9saW51eC9tdmVidS9wYXRjaGVzLTQuMTQvNTEzLWFy
bTY0LWR0cy1tYXJ2ZWxsLWFybWFkYTM3eHgtQWRkLWVtbWMtc2Rpby1waW5jdHJsLWQucGF0Y2gK
Pj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCB0YXJnZXQvbGludXgvbXZlYnUvcGF0Y2hlcy00LjE0LzUx
NC1hcm02NC1kdHMtbWFydmVsbC1hcm1hZGEtMzd4eC1FbmFibGUtZW1tYy1vbi1lc3ByZXNzLnBh
dGNoCj4+ICBjcmVhdGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L212ZWJ1L3BhdGNoZXMtNC4x
NC81MjItYXJtNjQtZHRzLW1hcnZlbGwtYXJtYWRhLTM3MjAtZXNwcmVzc29iaW4tYWRkLXBvcnRz
LS5wYXRjaAo+Pgo+PiBkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L212ZWJ1L2ZpbGVzLTQuMTQv
YXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLWVzcHJlc3NvYmluLWVtbWMu
ZHRzIGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2ZpbGVzLTQuMTQvYXJjaC9hcm02NC9ib290L2R0cy9t
YXJ2ZWxsL2FybWFkYS0zNzIwLWVzcHJlc3NvYmluLWVtbWMuZHRzCj4+IG5ldyBmaWxlIG1vZGUg
MTAwNjQ0Cj4+IGluZGV4IDAwMDAwMDAwMDAuLmVmOTBhMWJkMzgKPj4gLS0tIC9kZXYvbnVsbAo+
PiArKysgYi90YXJnZXQvbGludXgvbXZlYnUvZmlsZXMtNC4xNC9hcmNoL2FybTY0L2Jvb3QvZHRz
L21hcnZlbGwvYXJtYWRhLTM3MjAtZXNwcmVzc29iaW4tZW1tYy5kdHMKPj4gQEAgLTAsMCArMSwy
OCBAQAo+PiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wKyBPUiBNSVQpCj4+
ICsvKgo+PiArICogRGV2aWNlIFRyZWUgZmlsZSBmb3IgR2xvYmFsc2NhbGUgTWFydmVsbCBFU1BS
RVNTT0JpbiBCb2FyZCB3aXRoIGVNTUMKPj4gKyAqIENvcHlyaWdodCAoQykgMjAxOCBNYXJ2ZWxs
Cj4+ICsgKgo+PiArICogUm9tYWluIFBlcmllciA8cm9tYWluLnBlcmllckBmcmVlLWVsZWN0cm9u
cy5jb20+Cj4+ICsgKiBLb25zdGFudGluIFBvcm90Y2hraW4gPGtvc3RhcEBtYXJ2ZWxsLmNvbT4K
Pj4gKyAqCj4+ICsgKi8KPj4gKwo+PiArI2luY2x1ZGUgImFybWFkYS0zNzIwLWVzcHJlc3NvYmlu
LmR0cyIKPj4gKwo+PiArLyB7Cj4+ICsJbW9kZWwgPSAiR2xvYmFsc2NhbGUgTWFydmVsbCBFU1BS
RVNTT0JpbiBCb2FyZCAoZU1NQykiOwo+PiArCWNvbXBhdGlibGUgPSAiZ2xvYmFsc2NhbGUsZXNw
cmVzc29iaW4tZW1tYyIsICJnbG9iYWxzY2FsZSxlc3ByZXNzb2JpbiIsCj4+ICsJCSAgICAgIm1h
cnZlbGwsYXJtYWRhMzcyMCIsICJtYXJ2ZWxsLGFybWFkYTM3MTAiOwo+PiArfTsKPj4gKwo+PiAr
JnNkaGNpMCB7Cj4+ICsJc3RhdHVzID0gIm9rYXkiOwo+PiArCj4+ICsJI2FkZHJlc3MtY2VsbHMg
PSA8MT47Cj4+ICsJI3NpemUtY2VsbHMgPSA8MD47Cj4+ICsJbW1jY2FyZDogbW1jY2FyZEAwIHsK
Pj4gKwkJY29tcGF0aWJsZSA9ICJtbWMtY2FyZCI7Cj4+ICsJCXJlZyA9IDwwPjsKPj4gKwl9Owo+
PiArfTsKPj4gZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9tdmVidS9maWxlcy00LjE0L2FyY2gv
YXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtMzcyMC1lc3ByZXNzb2Jpbi12Ny1lbW1jLmR0
cyBiL3RhcmdldC9saW51eC9tdmVidS9maWxlcy00LjE0L2FyY2gvYXJtNjQvYm9vdC9kdHMvbWFy
dmVsbC9hcm1hZGEtMzcyMC1lc3ByZXNzb2Jpbi12Ny1lbW1jLmR0cwo+PiBuZXcgZmlsZSBtb2Rl
IDEwMDY0NAo+PiBpbmRleCAwMDAwMDAwMDAwLi4yYjU2NWNhOGQ4Cj4+IC0tLSAvZGV2L251bGwK
Pj4gKysrIGIvdGFyZ2V0L2xpbnV4L212ZWJ1L2ZpbGVzLTQuMTQvYXJjaC9hcm02NC9ib290L2R0
cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLWVzcHJlc3NvYmluLXY3LWVtbWMuZHRzCj4+IEBAIC0wLDAg
KzEsNDMgQEAKPj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlU
KQo+PiArLyoKPj4gKyAqIERldmljZSBUcmVlIGZpbGUgZm9yIEdsb2JhbHNjYWxlIE1hcnZlbGwg
RVNQUkVTU09CaW4gQm9hcmQgVjcgd2l0aCBlTU1DCj4+ICsgKiBDb3B5cmlnaHQgKEMpIDIwMTgg
TWFydmVsbAo+PiArICoKPj4gKyAqIFJvbWFpbiBQZXJpZXIgPHJvbWFpbi5wZXJpZXJAZnJlZS1l
bGVjdHJvbnMuY29tPgo+PiArICogS29uc3RhbnRpbiBQb3JvdGNoa2luIDxrb3N0YXBAbWFydmVs
bC5jb20+Cj4+ICsgKgo+PiArICovCj4+ICsKPj4gKyNpbmNsdWRlICJhcm1hZGEtMzcyMC1lc3By
ZXNzb2Jpbi5kdHMiCj4+ICsKPj4gKy8gewo+PiArCW1vZGVsID0gIkdsb2JhbHNjYWxlIE1hcnZl
bGwgRVNQUkVTU09CaW4gQm9hcmQgVjcgKGVNTUMpIjsKPj4gKwljb21wYXRpYmxlID0gImdsb2Jh
bHNjYWxlLGVzcHJlc3NvYmluLXY3LWVtbWMiLCAiZ2xvYmFsc2NhbGUsZXNwcmVzc29iaW4tdjci
LAo+PiArCQkgICAgICJnbG9iYWxzY2FsZSxlc3ByZXNzb2JpbiIsICJtYXJ2ZWxsLGFybWFkYTM3
MjAiLAo+PiArCQkgICAgICJtYXJ2ZWxsLGFybWFkYTM3MTAiOwo+PiArfTsKPj4gKwo+PiArJnBv
cnRzIHsKPj4gKwlwb3J0QDEgewo+PiArCQlyZWcgPSA8MT47Cj4+ICsJCWxhYmVsID0gImxhbjEi
Owo+PiArCQlwaHktaGFuZGxlID0gPCZzd2l0Y2gwcGh5MD47Cj4+ICsJfTsKPj4gKwo+PiArCXBv
cnRAMyB7Cj4+ICsJCXJlZyA9IDwzPjsKPj4gKwkJbGFiZWwgPSAid2FuIjsKPj4gKwkJcGh5LWhh
bmRsZSA9IDwmc3dpdGNoMHBoeTI+Owo+PiArCX07Cj4+ICt9Owo+PiArCj4+ICsmc2RoY2kwIHsK
Pj4gKwlzdGF0dXMgPSAib2theSI7Cj4+ICsKPj4gKwkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPj4g
Kwkjc2l6ZS1jZWxscyA9IDwwPjsKPj4gKwltbWNjYXJkOiBtbWNjYXJkQDAgewo+PiArCQljb21w
YXRpYmxlID0gIm1tYy1jYXJkIjsKPj4gKwkJcmVnID0gPDA+Owo+PiArCX07Cj4+ICt9Owo+IAo+
IEFyZSB0aGVzZSBkZXZpY2UgdHJlZSBmaWxlcyBhbHJlYWR5IHNlbmQgdXBzdHJlYW0gb3Igd2ls
bCB5b3UgZG8gc28/CgpUaGV5IGFyZSBub3Qgc2VudCB5ZXQuIFRoZXknbGwgbmVlZCBhIHNtYWxs
IHJld29yaywgSSdsbCBoYW5kbGUgdGhhdCBhZnRlciBwcmVwYXJpbmcKR1JVQiB1cGdyYWRlIHBh
dGNoZXMuCgo+IAo+IEhhdWtlCj4gCgoKLS0gClRNTgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Blbndy
dC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxt
YW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
