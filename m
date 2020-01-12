Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE636138861
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 Jan 2020 22:47:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1yVPbYI6BgVD5I1OlNO1Rvn48AHTKl9KQnyUYp82c94=; b=VsreMif6clVsDd
	qLHOxkkrbPuq28QDp60/APIUQBHUEd9TMzAQwe0U3dGWghNDbCMFgVzP3L4gstBZ/PKKKsUMFB8/Z
	IM9nYWbtYv7pQbQOOKGaLz2SbWxFMpkZuzDiWUzcGHVsF+KnsEJ6/ze4tFTlNO+JYqHXpns1ws5TA
	G9RMddXjJsxEf8NndX3vs20xwcy5pE6zQXOVu3jmb/sFfv5py/apNoxsbe4vIupcBs/f6yXXyeO4I
	p95eLiExJ1HUDHSUWbJEphUUl1VMYSbVlflb6+W6A1x+IF+8oVOE7KTEVRyt3rNB1VODXhRt4OS5G
	BSuo4uQvsjct/VVszCaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iql5L-00055S-4y; Sun, 12 Jan 2020 21:47:51 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iql5C-00054Z-GZ
 for openwrt-devel@lists.openwrt.org; Sun, 12 Jan 2020 21:47:44 +0000
X-Originating-IP: 72.234.165.80
Received: from [192.168.200.110] (udp050203uds.hawaiiantel.net [72.234.165.80])
 (Authenticated sender: mail@aparcar.org)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 93386FF802
 for <openwrt-devel@lists.openwrt.org>; Sun, 12 Jan 2020 21:47:32 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
Message-ID: <90038f66-81fc-6b34-1b85-b47aab83368a@aparcar.org>
Date: Sun, 12 Jan 2020 11:47:29 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_134742_685673_F994CCCE 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [RFC] commit message in YAML format for new devices
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

SGkgYWxsLAoKc29tZSB0aW1lIGFnbyBJIGNyZWF0ZWQgYSAobm93IG91dGRhdGVkKSBkZXZpY2Ug
b3ZlcnZpZXdbMF0gYmFzZWQgb24gCllBTUwgbWV0YSBkYXRhLiBUaGlzIGFwcHJvYWNoIGNvdWxk
IHNpbXBsaWZ5IG1haW50YWluaW5nIGFuIGRldmljZSAKb3ZlcnZpZXcgYW5kIGRldmljZSBzcGVj
aWZpYyBwYWdlc1sxXS4KCkFsbCBjb21taXRzIGFkZGluZyBuZXcgZGV2aWNlcyBhbHJlYWR5IGlu
Y2x1ZGUgbW9zdCByZWxldmFudCBpbmZvcm1hdGlvbiAKZm9yIGNyZWF0aW5nIHRoZSBvdmVydmll
dy4gSG93ZXZlciBpdCB3b3VsZCBiZSBjb252ZW5pZW50IGlmIGRldmVsb3BlcnMgCndvdWxkIGZv
cm1hdCB0aGVpciBjb21taXQgbWVzc2FnZXMgaW4gYSBnZW5lcmljIGZvcm1hdCwgdGhlcmVmb3Jl
IEknZCAKcHJvcG9zZSB0aGUgZm9sbG93aW5nOgoKRXZlcnkgY29tbWl0IG1lc3NhZ2UgZm9yIG5l
d2x5IGFkZGVkIGRldmljZXMgbXVzdCBjb250YWluIGEgbnVtYmVyIG9mIApoYXJkd2FyZSBpbmZv
cm1hdGlvbiBhbmQgc3RlcHMgZm9yIGFuIGluaXRpYWwgaW5zdGFsbGF0aW9uLgpUaGUgaGFyZHdh
cmUgaW5mb3JtYXRpb24gc2hvdWxkIGNvbnRhaW4gYXQgbGVhc3QgdGhlIGZvbGxvd2luZyAKaW5m
b3JtYXRpb24sIG1heWJlIG1vcmU6CgpTb0MsIGZsYXNoLCByYW0sIHdpZmksIExFRHMsIGJ1dHRv
bnMsIFVTQiwgc2VyaWFsLCB2ZW5kb3IsIG1vZGVsLCBkZXZpY2UgCnRyZWUgSUQsIEV0aGVybmV0
IHBvcnRzCgpBbiBpbGx1c3RyYXRpdmUgY29tbWl0IHRoZXJlZm9yZToKCnNvYzogUXVhbGNvbW0g
SVBRNDAyOQpyYW1fbWI6IDUxMgpmbGFzaDoKICAgLSBzaXplX21iOiAxMjgKICAgICB0eXBlOiBT
UEktTkFORCAoTWFjcm9uaXgpCiAgwqAtIHNpemVfbWI6IDQKICAgICB0eXBlOiBTUEktTk9SIChN
YWNyb25peCBNWDI1UjMyMzVGKQp1c2I6CiAgIC0gdmVyc2lvbjogMgogICAgIHBvcnRzOiAxCiAg
IC0gdmVyc2lvbjogMwogICAgIHBvcnRzOiAyCmV0aGVybmV0OgogICAtIG1iaXQ6IDEwMAogICAg
IHBvcnRzOiA0CiAgIC0gbWJpdDogMTAwMAogICAgIHBvcnRzOiAxCmxlZF9jb3VudDogMwpzZXJp
YWw6IGZhbHNlCnZlbmRvcjogRm9vYmFyCm1vZGVsOiBMb3JlbSBJcHN1bQp2YXJpYW50OiB2NApk
dF9pZDogZm9vYmFyX2xvcmVtLWlwc3VtX3Y0CnRhcmdldDogYXRoNzkvZ2VuZXJpYwoKQWRkaXRp
b25hbGx5IHN0dWZmIGxpa2UgY3B1X21oeiwgY3B1X2NvcmVzIGFuZCBzdWNoIGNvdWxkIGFsc28g
YmUgYWRkZWQsIHRoZSBPcGVuV3J0IGh3ZGF0YSBvZmZlcnMgc29tZSBhZGRpdGlvbmFsIGluZm9y
bWF0aW9uIHdoaWNoIHNob3VsZCBiZSBhZGRlZCBpZiByZWxldmFudFsyXS4KClRvIHdyaXRlIGEg
bXVsdGktbGluZSB0ZXh0IGZvciB0aGUgaW5zdGFsbGF0aW9uIG9yIGNvbW1lbnRzLCBhICJ8IiBj
YW4gYmUgdXNlZCBhcyB0aGUgZm9sbG93aW5nOgoKaW5zdGFsbGF0aW9uOiB8CiAgIDEuIEdldCB0
aGUgT3BlbldydCBpbml0cmFtZnMgaW1hZ2UuIFJlbmFtZSBpdCB0byBpcHE0MHh4LmFyaSBhbmQg
cHV0IGl0CiAgICAgIGludG8gdGhlIFRGVFAgc2VydmVyIHJvb3QgZGlyZWN0b3J5LiBDb25maWd1
cmUgdGhlIFRGVFAgc2VydmVyIHRvCiAgICAgIGJlIHJlYWNoYWJsZSBhdCAxOTIuMTY4LjEuNzUv
MjQuIENvbm5lY3QgdGhlIG1hY2hpbmUgcnVubmluZyB0aGUgVEZUUAogICAgICBzZXJ2ZXIgdG8g
dGhlIEUwICghKSBldGhlcm5ldCBwb3J0IG9mIHRoZSBhY2Nlc3MgcG9pbnQsIGFzIGl0IG9ubHkK
ICAgICAgdHJpZXMgdG8gcHVsbCBmcm9tIHRoZSBXQU4gcG9ydC4KICAgCiAgIDIuIENvbm5lY3Qg
dG8gdGhlIHNlcmlhbCBjb25zb2xlLiBJbnRlcnJ1cHQgYXV0b2Jvb3RpbmcgYnkgcHJlc3NpbmcK
ICAgICAgRW50ZXIgd2hlbiBwcm9tcHRlZC4KICAgLi4uCgpjb21tZW50czogfAogICBWQ0MgLSBO
QwogICAgRCsgLSBUWAogICAgRC0gLSBSWAogICBHTkQgLSBHTkQKCkluc3RhbGxhdGlvbiBzdGVw
cyB3b3VsZCBiZSBtZXJnZWQgdG8gdGVtcGxhdGVzIGFzIG1hbnkgZGV2aWNlcyBzaGFyZSB0aGUg
c2FtZSBzdGVwcywgb25seSB2YXJ5aW5nIHRoZSBURlRQIGJpbmFyeSBuYW1lIG9yIElQLiBUaGlz
IGNvdWxkIGJlY29tZSBwYXJ0IG9mIHRoZSBnZW5lcmFsIGluZm9ybWF0aW9uLCBsaWtlIGEgdmFy
aWFibGUgY2FsbGVkIHRmdHBfaXAgYW5kIHRmdHBfYmluLgogIApBbGwgaW5mbyB3b3VsZCBiZSBh
ZGRlZCB0byBhIG1ldGFkYXRhIHJlcG9zaXRvcnkgbGlrZSBvcGVud3J0L2RldmljZXMuZ2l0LCB3
aGljaCBjYW4gdGhlbiBiZSB1cGRhdGVkIGJ5IHRoZSBjb21tdW5pdHkuCgpUbyB2ZXJpZnkgdGhl
IFlBTUwgZGF0YSBhIHRvb2wgbGlrZSB5YW1sbGludFszXSAoUHl0aG9uKSBjb3VsZCBiZSB1c2Vk
LgoKVGhlIG1haW4gbW90aXZhdGlvbiBpcyB0byBoYXZlIGFuIHNpbXBsZSBhbmQgYXBwZWFsaW5n
IG92ZXJ2aWV3IHdoaWNoIGFsbG93cyBzZWFyY2hpbmcvZmlsdGVyaW5nIGZvciBkZXZpY2VzLCBz
ZWVpbmcgdGhlIHN1cHBvcnQgc3RhdHVzLCByZXRyaWV2ZSBmaXJtd2FyZSBhbmQgaGF2aW5nIGFu
IGVhc2lseSBtYWludGFpbmVkLCB1cCB0byBkYXRlIGRvY3VtZW50YXRpb24uCgpQbGVhc2Ugc2hh
cmUgeW91ciB0aG91Z2h0cy4KClN1bnNoaW5lLApQYXVsCgpbMF06IGh0dHBzOi8vYXBhcmNhci5n
aXRodWIuaW8vb3BlbndydC1kZXZpY2VzLwpbMV06IGh0dHBzOi8vYXBhcmNhci5naXRodWIuaW8v
b3BlbndydC1kZXZpY2VzL2RldmljZXMvdHAtbGlua190bC13ZHI0MzAwLwpbMl06IApodHRwczov
L2dpdGh1Yi5jb20vYXBhcmNhci9vcGVud3J0LWRldmljZXMvYmxvYi9tYXN0ZXIvX2RhdGEvZGV2
aWNlcy9vcGVuLW1lc2hfYTYyLnltbApbM106IGh0dHBzOi8vZ2l0aHViLmNvbS9hZHJpZW52ZXJn
ZS95YW1sbGludAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQt
ZGV2ZWwK
