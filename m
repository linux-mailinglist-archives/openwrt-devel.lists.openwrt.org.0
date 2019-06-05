Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0153935DE8
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 15:28:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1aViPXvXnzmzWQ+vXB58wpsWYmTuDLDZEtiiZanaUOg=; b=PVky3S8t57I8ebckzlCBfwVvM
	wDOwTmXybNgdt7W1NMyRCFrllkP05xk3e286hmEvzU+z5ouYdTYfvIkoDGXe+nvcLmjVf8CQ/sQVH
	6szEmHPqE+fLj+dwuaT/8TGz2Y0uWL5I2ImKrG9M8S8i9PDUn/g0bkn3OSEu+6FymnXkyAEARG5O0
	XJkxBlNxYrpikam1/g+3dbCKBYs9jwSZRfzCMGvI7WcpwwzY3H/Y1IOibO8P9kinIvZTRUPhR4KHc
	cKtDTl7Io95GtXFDt3mgit+QTY25frS1drb8uCHZUDfgItTs+HvrWDRWvvBo7xfUn3FEZpvX6aFkQ
	k2BGfwUWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYVy3-0006cC-4S; Wed, 05 Jun 2019 13:28:39 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYVxw-0006bk-5p
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 13:28:33 +0000
Received: from p5dcfb869.dip0.t-ipconnect.de ([93.207.184.105]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>) id 1hYVxu-0007Cl-NP
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 15:28:30 +0200
To: openwrt-devel@lists.openwrt.org
References: <23ef4eed-1984-9189-65e8-dd6dba5c3aaa@phrozen.org>
 <DLiog63dMUCNvIuGWRoixvsPxUgrQbnsVeQEQH9A2342@mailpile>
 <bfbe025d-a01d-264f-0dde-6e1bfc2cc43d@phrozen.org>
 <CAOiHx=kNxYHxV2e+Cc5pY4V6FD+YuYxvK9V1U7iua_x5Uo30AA@mail.gmail.com>
 <522982e7-b056-a798-022f-a58155ad99bf@phrozen.org>
 <CAOiHx=n8nJZ7hxocaNN+DmTwqMMNJnhKOi+xyiGP=5SHWdz3_g@mail.gmail.com>
 <059bcae8-bbe3-73e7-66cd-b0e1f2f7b777@phrozen.org>
 <CAOiHx=mQuic7ZS6cVQPfjCPS8V3H40vJV5ErkBa29JrEmctN6Q@mail.gmail.com>
From: John Crispin <john@phrozen.org>
Message-ID: <a89d55da-b4ef-ed98-a5af-34cbd43df861@phrozen.org>
Date: Wed, 5 Jun 2019 15:28:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAOiHx=mQuic7ZS6cVQPfjCPS8V3H40vJV5ErkBa29JrEmctN6Q@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_062832_380286_A549315A 
X-CRM114-Status: GOOD (  20.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH V3 2/2] script/feeds: add a new command
 that allows generating a new feeds.conf
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDA1LzA2LzIwMTkgMTU6MjYsIEpvbmFzIEdvcnNraSB3cm90ZToKPiBPbiBXZWQsIDUgSnVu
IDIwMTkgYXQgMTU6MTYsIEpvaG4gQ3Jpc3BpbiA8am9obkBwaHJvemVuLm9yZz4gd3JvdGU6Cj4+
Cj4+IE9uIDA1LzA2LzIwMTkgMTU6MTEsIEpvbmFzIEdvcnNraSB3cm90ZToKPj4+IE9uIFdlZCwg
NSBKdW4gMjAxOSBhdCAxNDo1OCwgSm9obiBDcmlzcGluIDxqb2huQHBocm96ZW4ub3JnPiB3cm90
ZToKPj4+PiBPbiAwNS8wNi8yMDE5IDE0OjU0LCBKb25hcyBHb3Jza2kgd3JvdGU6Cj4+Pj4+IEhp
LAo+Pj4+Pgo+Pj4+PiBPbiBXZWQsIDUgSnVuIDIwMTkgYXQgMTQ6MzMsIEpvaG4gQ3Jpc3BpbiA8
am9obkBwaHJvemVuLm9yZz4gd3JvdGU6Cj4+Pj4+PiBPbiAwNS8wNi8yMDE5IDEzOjM1LCBLYXJs
IFBhbHNzb24gd3JvdGU6Cj4+Pj4+Pj4gSm9obiBDcmlzcGluIDxqb2huQHBocm96ZW4ub3JnPiB3
cm90ZToKPj4+Pj4+Pj4gT24gMDUvMDYvMjAxOSAxMjoxNywgS2FybCBQYWxzc29uIHdyb3RlOgo+
Pj4+Pj4+Pj4gSm9obiBDcmlzcGluIDxqb2huQHBocm96ZW4ub3JnPiB3cm90ZToKPj4+Pj4+Pj4+
PiBUaGlzIGNhbiBiZSB1c2VkIGluc2lkZSBidWlsZCBzZXR1cHMgZm9yIGVhc3kgZmVlZHMuY29u
Zgo+Pj4+Pj4+Pj4+IGdlbmVyYXRpb24uCj4+Pj4+Pj4+PiBDb3VsZCB5b3UgZ2l2ZSB1cyBhbiBl
eGFtcGxlIG9mIGhvdyB0aGlzIGlzIGFjdHVhbGx5IGVhc3ksIG9yCj4+Pj4+Pj4+PiB3aGF0IHNv
cnQgb2YgZnVuY3Rpb25hbGl0eSB0aGlzIGlzIHByb3ZpZGluZyBiZXlvbmQgImNhdAo+Pj4+Pj4+
Pj4gZmVlZHMuY29uZi5kZWZhdWx0IGZlZWRzLmNvbmYuZXh0cmEgPiBmZWVkcy5jb25mIgo+Pj4+
Pj4+Pj4KPj4+Pj4+Pj4+IEl0IHNlZW1zIGxpa2UgYSBsb3Qgb2YgcGVybCBmb3IgYSBuYXJyb3cg
dXNlY2FzZS4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBTaW5jZXJlbHksCj4+Pj4+Pj4+PiBLYXJsIFBh
bHNzb24KPj4+Pj4+Pj4gVGhpcyB3YXMgYnJvdWdodCB1cCBhcyBhIG1pc3NpbmcgZmVhdHVyZSBi
eSB0aGUgcHJwbCBmb2xrcy4gSQo+Pj4+Pj4+PiBjb25zaWRlcmVkIG9uIGhvdyB0byBiZXN0IGlt
cGxlbWVudCB0aGlzIGFuZCBmaW5kIHRoYXQgaGF2aW5nCj4+Pj4+Pj4+IHByb3BlciB0b29saW5n
IGlzIG11Y2ggYmV0dGVyIHRoYW4gaGF2aW5nIHRvIGNhcnJ5IGFyb3VuZCBhbgo+Pj4+Pj4+PiBl
eHRyYSBmaWxlIHRoYXQgaXMgY2F0LiBiZWluZyBhYmxlIHRvIGJ1aWxkIHRoZSBmZWVkcy5jb25m
Cj4+Pj4+Pj4+IGR5bmFtaWNhbGx5IGxpa2UgdGhpcyBqdXN0IHNlZW1zIG11Y2ggY2xlYW5lciB0
byBtZSBhbmQgd2lsbAo+Pj4+Pj4+PiBhbGxvdyBkb3duc3RyZWFtIHVzZXJzLCB2ZW5kb3JzLCBv
ZG1zIGFuZCBpbnRlZ3JhdG9ycyB0byBoYXZlCj4+Pj4+Pj4+IGxlc3MgbmVlZCB0byBwYXRjaCB0
aGVpciB0cmVlcyB0byBkZWF0aC4KPj4+Pj4+PiBTbywgdGhleSBzdGlsbCBoYXZlIHRvIGhhdmUg
YSBzY3JpcHQsIGJ1dCBub3cgdGhlIHNjcmlwdCBoYXMuLi4KPj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+
Pj4gLi4uCj4+Pj4+Pj4gLi9zY3JpcHRzL2ZlZWRzIHNldHVwIC1iIHNyYy1naXQscHJpdmF0ZS1h
YSxnaXQ6Ly9ibGFoCj4+Pj4+Pj4gc3JjLWxpbmsscHJpdmF0ZS1iYiwvd29wL2JsYWgKPj4+Pj4+
PiAuLi4KPj4+Pj4+Pgo+Pj4+Pj4+IGluc3RlYWQgb2YKPj4+Pj4+PiAuLi4KPj4+Pj4+PiBjcCBm
ZWVkcy5jb25mLmRlZmF1bHQgZmVlZHMuY29uZgo+Pj4+Pj4+IGVjaG8gInNyYy1naXQgcHJpdmF0
ZS1hYSBnaXQ6Ly9ibGFoIiA+PiBmZWVkcy5jb25mCj4+Pj4+Pj4gZWNobyAic3JjLWxpbmsgcHJp
dmF0ZS1iYiAvd29wL2JsYWgiID4+IGZlZWRzLmNvbmYKPj4+Pj4+PiAuLi4KPj4+Pj4+Pgo+Pj4+
Pj4+IEkgbWVhbiwgX3llc18gaXQncyAic2ltcGxlciIgYnV0IGl0J3Mgb25seSBzaW1wbGVyIGJ5
IGJyaW5naW5nIGluCj4+Pj4+Pj4gbmV3IHRvb2xzIHdpdGggbmV3IGxheWVycyBvZiBhYnN0cmFj
dGlvbi4gSSByZWFsbHkgcXVlc3Rpb24KPj4+Pj4+PiB3aGV0aGVyIHRoYXQncyBhY3R1YWxseSBz
aW1wbGVyIGZvciBhbnlvbmUgaW4gdGhlIGxvbmcgcnVuLCBhbmQKPj4+Pj4+PiBhbHNvIGhvdyB0
aGlzIHJlYWxseSBjb3VudHMgYXMgYSAibWlzc2luZyBmZWF0dXJlIiBUaGVyZSdzIHN0aWxsCj4+
Pj4+Pj4gZ29pbmcgdG8gYmUgYSByZXF1aXJlbWVudCBmb3IgdGhhdCB2ZW5kb3Igc2NyaXB0Lgo+
Pj4+Pj4+Cj4+Pj4+Pj4gU2luY2VyZWx5LAo+Pj4+Pj4+IEthcmwgUGFsc3Nvbgo+Pj4+Pj4gSXRz
IG5vdCBhIG5ldyB0b29sLCBpdHMgYW4gZXh0cmEgY2FsbCB0byBhbiBhbHJlYWR5IGV4aXN0aW5n
IG9uZS4gSQo+Pj4+Pj4gYmVsaWV2ZSB0aGF0IHRoZSBvbmUgbGluZXIgaXMgbXVjaCBjbGVhbmVy
IHRoYW4gdGhlIDMgbGluZSBzY3JpcHRhZ2UuCj4+Pj4+PiB0aGVyZSBpcyBubyByZXF1aXJlbWVu
dCBmb3IgYSB2ZW5kb3Igc2NyaXB0LiB0aGV5IHNoaXAgd2l0aCBhIFBERiB0aGF0Cj4+Pj4+PiBo
YXMgdGhlIGJ1aWxkIHN0ZXBzLiBUaGlzIG9uZWxpbmUgd2lsbCBiZSBtdWNoIGVhc2llciB0byB1
c2UgSSBiZWxpZXZlLgo+Pj4+PiBTaW5jZSB0aGUgdXNlIGNhc2UgaXMgaGF2aW5nIGFkZGl0aW9u
YWwgY3VzdG9tIGZlZWRzIHRvIHRoZSBub3JtYWwKPj4+Pj4gcGFja2FnZSBmZWVkcywgbWF5YmUg
aXQgd291bGQgbWFrZSBtb3JlIHNlbnNlIHRvIGhhdmUgYSBlLmcuCj4+Pj4+IGZlZWRzLmNvbmYu
Y3VzdG9tIHRoYXQgaXMgdXNlZCBhcyBhbiBhZGRpdGlvbiB0byB0aGUKPj4+Pj4gZmVlZHMuY29u
Zi5kZWZhdWx0IGluc3RlYWQgb2YgY29tcGxldGVseSByZXBsYWNpbmcgaXQuIFRoYXQgd2F5IHlv
dQo+Pj4+PiB3b3VsZCBhdm9pZCBtaXNzaW5nIHVwc3RyZWFtIGNoYW5nZXMgaW4gdGhlIGZlZWRz
LmNvbmYuZGVmYXVsdCB3aGVuCj4+Pj4+IHVwZGF0aW5nIHlvdXIgYnVpbGQgZW52aXJvbm1lbnQu
Cj4+Pj4gSGksCj4+Pj4KPj4+PiBUaGUgcGF0Y2ggZG9lcyBub3QgbWFuaXB1bGF0ZSB0aGUgZGVm
YXVsdCBmaWxlIGF0IGFsbC4KPj4+Pgo+Pj4+Cj4+Pj4+IFRoZW4gd2UgY291bGQgYWRkIGEgZmV3
IGNvbW1hbmRzIHRvIHNjcmlwdHMvZmVlZHMgZm9yIG1hbmlwdWxhdGluZwo+Pj4+PiB0aGF0IGZl
ZWRzLmNvbmYuY3VzdG9tIChhZGRpbmcvcmVtb3ZpbmcgZmVlZHMsIGNoYW5naW5nIHRoZWlyCj4+
Pj4+IHR5cGVzL2FkZHJlc3Nlcy9uYW1lcyBldGMpLgo+Pj4+IHNvIGluc3RlYWQgb2YgdXNpbmcg
c2NyaXB0L2NvbW1hbmRzIHRvIGNyZWF0ZSB0aGUgYWxyZWFkeSBleGlzdGluZwo+Pj4+IGZlZWRz
LmNvbmYgZmlsZSB3ZSBzaG91bGQgaW50cm9kdWNlIGEgM3JkIGZpbGUgPyB0aGF0IG1ha2VzIG5v
IHNlbnNlIHRvIG1lLgo+Pj4gTm8sIGluIHRoYXQgY2FzZSB0aGVyZSB3b3VsZCBiZSBubyBmZWVk
cy5jb25mLiBKdXN0IGZlZWRzLmNvbmYuZGVmYXVsdAo+Pj4gKyBmZWVkcy5jb25mLmN1c3RvbSAo
YSAiZGlmZiIpLCBzbyBzdGlsbCBvbmx5IHR3byBmaWxlcy4gRGlmZmVyZW50Cj4+PiBuYW1lIHRv
IG5vdCBicmVhayBleGlzdGluZyBmZWVkcy5jb25mIHNldHVwcy4gT3IgYWRkIGEgbWFya2VyIHRv
Cj4+PiBmZWVkcy5jb25mIHRvIG1hcmsgaXQgYXMgYSAic25pcHBldC9kaWZmIi4gT3IgbWF5YmUg
dXNlIHRoZSBpbmNsdWRlCj4+PiB0aGluZyBwcm9wb3NlZCBieSBCasO4cm4gYXQgdGhlIHRvcCBs
aW5lIG9mIHRoZSBnZW5lcmF0ZWQgZmVlZHMuY29uZi4KPj4+Cj4+PiBTbyB0aGUgZmVlZHMuY29u
ZiBnZW5lcmF0ZWQgYnkgeW91ciBjb21tYW5kIHdvdWxkIHRoZW4gYmUKPj4+Cj4+PiBzcmMtaW5j
bHVkZSBmZWVkcy5jb25mLmRlZmF1bHQKPj4+IHNyYy1naXQgY3VzdG9tX3N0dWZmIGdpdDovL2V4
YW1wbGUuY29tOmZvbwo+Pj4KPj4+IGF2b2lkaW5nIGhhdmluZyB0byBoYXZlIGEgbG9jYWwsIHVu
Y2hhbmdpbmcgY29weSBvZiBjb250ZW50cyBvZgo+Pj4gZmVlZHMuY29uZi5kZWZhdWx0IGluIHRo
ZXJlLgo+Pj4KPj4+IEEgYml0IGxpa2Ugd2Ugc3BsaXQgdXAgdGhlIG9wa2cgZmVlZHMgY29uZmln
dXJhdGlvbiB0byBiYXNpYy9kaXN0Cj4+PiBmZWVkcyBmaWxlcyBhbmQgY3VzdG9tIGZlZWRzIGZp
bGUuCj4+Pgo+Pj4KPj4+IFJlZ2FyZHMKPj4+IEpvbmFzCj4+Cj4+IFRoYXQgd2lsbCB5ZXQgYWdh
aW4gcmVxdWlyZSBhbiBhZGRpdGlvbmFsIGdpdCB0cmVlLCB3aGljaCBpcyBub3QKPj4gZGVwbG95
YWJsZSBpbnNpZGUgYSB0YXIgZmlsZSArIHBkZiBhbmQgaXMgdm9vZG9vIHRvIHRoZSB1c2Vycy4g
SSBkbyBsaWtlCj4+IHRoZSBpZGVhIHRob3VnaCwgYnV0IGl0IGlzIGZpdHRpbmcgZm9yIGEgZm9z
cyBkZXZlbG9wZXIgYW5kIG5vdCBhCj4+IGNvcnBvcmF0ZSBjb2Rlci4KPiA/Pz8gV2hlcmUgZG9l
cyB0aGUgYWRkaXRpb25hbCBnaXQgdHJlZSBjb21lIGZyb20/Cj4KPiBJZiB0aGUgZmVlZHMuY29u
Zi5kZWZhdWx0IGRvZXNuJ3QgY2hhbmdlLCB0aGF0J3MgZmluZS4gQnV0IG5vdCBoYXZpbmcKPiB0
aGUgZGVmYXVsdCBmZWVkcyBpbiBhIChsb2NhbCkgY29uZmlndXJhdGlvbiBmaWxlIGhhcyB0aGUg
YWR2YW50YWdlCj4gdGhhdCBpZiB5b3UgZS5nLiB1cGRhdGUgeW91ciBiYXNlIGRpc3RyaWJ1dGlv
bi9zZGsgZnJvbSBlLmcuIDE5LjA2IHRvCj4gMTkuMTIsIHlvdSBkb24ndCBuZWVkIHRvIHVwZGF0
ZSB5b3VyIGZlZWRzLmNvbmYgdG8gcG9pbnQgdG8gdGhlIDE5LjEyCj4gYnJhbmNoZXMuIE9yIHJl
LWNyZWF0ZSBpdC4KPgo+IEpvbmFzCgoKYWggb2ssIHNvIGknbGwgbW9kaWZ5IHRoZSBwYXRjaCB0
byBub3QgY29weSB0aGUgZmVlZHMuY29uZi5kZWZhdWx0IHRvIApmZWVkcy5jb25mIGJ1dCBsZXQg
aXQgcmVmZXJlbmNlIHRoZSBmaWxlIHVzaW5nIGJqb3JuJ3MgcGF0Y2gKCiDCoMKgwqAgSm9obgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
