Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 083A51E9B20
	for <lists+openwrt-devel@lfdr.de>; Mon,  1 Jun 2020 03:07:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:In-Reply-To:To:
	References:Date:Mime-Version:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ao0C5mY9HOumq96mCBHRDGkswvOgYag9Qee3Ex83Udc=; b=UnxD9Xr/0ThfUY
	ZANjXPOXxo79tOzU4ow/MKaeCh4QxoAj2vMenV/b/0gcjzaICf1pdlWYIq4IIhFBhZ6FRMJ9fKKkZ
	frY/nLPYjMYI/43u7bKSVOk0kO5UnrS/Lqot6eF/zfxE5mO7FzYBn3gvli1ZkNHjjymDvZDaIArUu
	kd/5h2Fc6elhFFnPaHOsiz13BZf5EXlqbRfdaf2ZC4hrNMZ4sT56RxsHN9FwyjB+3voqyftLMeM5E
	OL1l9uFq6K3IbZYnJm4gDszXXnnmhVh7XDP1K2j/0P3YoZeVDB7anBzs3gF4hCRSVT1N1z4dEyYpz
	7CY8867RtianqFakiNoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfYv8-00055B-8g; Mon, 01 Jun 2020 01:07:18 +0000
Received: from mail.redfish-solutions.com ([45.33.216.244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfYv2-00054i-Hx
 for openwrt-devel@lists.openwrt.org; Mon, 01 Jun 2020 01:07:14 +0000
Received: from macmini.redfish-solutions.com (macmini.redfish-solutions.com
 [192.168.1.38]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id 05117Ap5020041
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <openwrt-devel@lists.openwrt.org>; Sun, 31 May 2020 19:07:10 -0600
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Date: Sun, 31 May 2020 19:07:10 -0600
References: <FEA626F4-A60D-48EE-9B72-4F74F639D463@redfish-solutions.com>
To: openwrt-devel <openwrt-devel@lists.openwrt.org>
In-Reply-To: <FEA626F4-A60D-48EE-9B72-4F74F639D463@redfish-solutions.com>
Message-Id: <F7D4F8B6-85A4-4195-BCF7-DBEBAF6733D4@redfish-solutions.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_180712_720017_84267A4C 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Lots of errors w/ sysupgrade on x86_64
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

RmlsZWQgYSBmbHlzcHJheToKCmh0dHBzOi8vYnVncy5vcGVud3J0Lm9yZy9pbmRleC5waHA/ZG89
ZGV0YWlscyZ0YXNrX2lkPTMxNDAKCgo+IE9uIE1heSAzMSwgMjAyMCwgYXQgNDo0MyBQTSwgUGhp
bGlwIFByaW5kZXZpbGxlIDxwaGlsaXBwX3N1YnhAcmVkZmlzaC1zb2x1dGlvbnMuY29tPiB3cm90
ZToKPiAKPiBIYWQgdG8gc2V0IHVwIGNvbnNvbGUgcmVkaXJlY3Rpb24gdG8gY2FwdHVyZSB0aGlz
LCBidXQgdGhpcyBpcyB3aGF0IEnigJltIHNlZWluZyBvbiBhIGZhaXJseSByZWNlbnQgYnVpbGQg
b2YgbWFzdGVyIChhYm91dCAyIHdlZWtzIG9sZCk6Cj4gCj4gcm9vdEBPcGVuV3J0Oi8jIGlmZG93
biB3YW4KPiByb290QE9wZW5XcnQ6LyMgCj4gcm9vdEBPcGVuV3J0Oi8jIAo+IHJvb3RAT3Blbldy
dDovIyBzeXN1cGdyYWRlIC90bXAvb3BlbndydC1yMTMzNjBcKzY0LTQ2NjFiMDUzOTAteDg2LTY0
LWdlbmVyaWMtc3F1YXNoZnMtY29tYmluZWQtZWZpLmltZyAKPiBJbWFnZSBtZXRhZGF0YSBub3Qg
Zm91bmQKPiBSZWFkaW5nIHBhcnRpdGlvbiB0YWJsZSBmcm9tIGJvb3RkaXNrLi4uCj4gY2F0OiB3
cml0ZSBlcnJvcjogQnJva2VuIHBpcGUKPiBSZWFkaW5nIHBhcnRpdGlvbiB0YWJsZSBmcm9tIGlt
YWdlLi4uCj4gU2F2aW5nIGNvbmZpZyBmaWxlcy4uLgo+IENvbW1lbmNpbmcgdXBncmFkZS4gQ2xv
c2luZyBhbGwgc2hlbGwgc2Vzc2lvbnMuCj4gV2F0Y2hkb2cgaGFuZG92ZXI6IGZkPTcKPiAtIHdh
dGNoZG9nIC0KPiBraWxsYWxsOiB0ZWxuZXRkOiBubyBwcm9jZXNzIGtpbGxlZAo+IGtpbGxhbGw6
IGRyb3BiZWFyOiBubyBwcm9jZXNzIGtpU2VuZGluZyBURVJNIHRvIHJlbWFpbmluZyBwcm9jZXNz
ZXMgLi4uIG50cGQgc2ggc25tcGQgZGhjcGQgaXBzZXQtZG5zIGNvbGxlY3RkIGxsZHBkIGxsZHBk
IHNtYXJ0ZCBuYW1lZCBzbGVlcCB1YnVzZCBhc2tmaXJzdCB1cm5nZCBuZXRpZmQgcm5nZCBjcm9u
ZCBsaWdodHRwZCBzc2hkIHN5c2xvZy1uZyAKPiBTZW5kaW5nIEtJTEwgdG8gcmVtYWluaW5nIHBy
b2Nlc3NlcyAuLi4gCj4gU3dpdGNoaW5nIHRvIHJhbWRpc2suLi4KPiBQZXJmb3JtaW5nIHN5c3Rl
bSB1cGdyYWRlLi4uCj4gUmVhZGluZyBwYXJ0aXRpb24gdGFibGUgZnJvbSBib290ZGlzay4uLgo+
IGRkOiB3YXJuaW5nOiBwYXJ0aWFsIHJlYWQgKDgxOTIgYnl0ZXMpOyBzdWdnZXN0IGlmbGFnPWZ1
bGxibG9jawo+IDArNjMgcmVjb3JkcyBpbgo+IDArNjMgcmVjb3JkcyBvdXQKPiAxMTAxODI0IGJ5
dGVzICgxLjEgTUIsIDEuMSBNaUIpIGNvcGllZCwgMC4wMDQ5MjM0NyBzLCAyMjQgTUIvcwo+IFJl
YWRpbmcgcGFydGl0aW9uIHRhYmxlIGZyb20gaW1hZ2UuLi4KPiBXcml0aW5nIGltYWdlIHRvIC9k
ZXYvbnZtZTBuMXAxLi4uCj4gY2F0OiB3cml0ZSBlcnJvcjogQnJva2VuIHBpcGUKPiA0MDk1OSsw
IHJlY29yZHMgaW4KPiAxOSsxIHJlY29yZHMgb3V0Cj4gMjA5NzEwMDggYnl0ZXMgKDIxIE1CLCAy
MCBNaUIpIGNvcGllZCwgMC4wOTYzMzEzIHMsIDIxOCBNQi9zCj4gV3JpdGluZyBpbWFnZSB0byAv
ZGV2L252bWUwbjFwMi4uLgo+IDQ2Mjg0NyswIHJlY29yZHMgaW4KPiAyMjUrMSByZWNvcmRzIG91
dAo+IDIzNjk3NzY2NCBieXRlcyAoMjM3IE1CLCAyMjYgTWlCKSBjb3BpZWQsIDAuODEwMjg4IHMs
IDI5MiBNQi9zCj4gV3JpdGluZyBuZXcgVVVJRCB0byAvZGV2L252bWUwbjEuLi4KPiA0KzAgcmVj
b3JkcyBpbgo+IDQrMCByZWNvcmRzIG91dAo+IGNhdDogd3JpdGUgZXJyb3I6IEJyb2tlbiBwaXBl
Cj4gNCBieXRlcyBjb3BpZWQsIDAuMDA0Mzk3MTMgcywgMC45IGtbIDIzMDguOTI3MTU5XSBGMkZT
LWZzIChudm1lMG4xcDEpOiBNYWdpYyBNaXNtYXRjaCwgdmFsaWQoMHhmMmY1MjAxMCkgLSByZWFk
KDB4MCkKPiBCL3MKPiBbIDIzMDguOTQ1NjY3XSBGMkZTLWZzIChudm1lMG4xcDEpOiBDYW4ndCBm
aW5kIHZhbGlkIEYyRlMgZmlsZXN5c3RlbSBpbiAxdGggc3VwZXJibG9jawo+IFsgMjMwOC45NjMx
NDFdIEYyRlMtZnMgKG52bWUwbjFwMSk6IE1hZ2ljIE1pc21hdGNoLCB2YWxpZCgweGYyZjUyMDEw
KSAtIHJlYWQoMHg2MDIwNjAxKQo+IFsgMjMwOC45ODA0ODddIEYyRlMtZnMgKG52bWUwbjFwMSk6
IENhbid0IGZpbmQgdmFsaWQgRjJGUyBmaWxlc3lzdGVtIGluIDJ0aCBzdXBlcmJsb2NrCj4gVXBn
cmFkaW5nIGJvb3Rsb2FkZXIgb24gL2Rldi9udm1lMG4xLi4uCj4gdG91Y2g6IC90bXAvYm9vdC9n
cnViL3VwZ3JhZGVkOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5Cj4gVXBncmFkZSBjb21wbGV0
ZWQKPiBSZWJvb3Rpbmcgc3lzdGVtLi4uCj4gdW1vdW50OiBjYW4ndCB1bm1vdW50IC9kZXY6IFJl
c291cmNlIGJ1c3kKPiB1bW91bnQ6IGNhbid0IHVubW91bnQgL3RtcDogUmVzb3VyY2UgYnVzeQo+
IFsgMjMxMC44NTI1ODJdIEFDUEkgV2FybmluZzogXF9TQi5QQ0kwLkJSMkMuX1BSVDogUmV0dXJu
IFBhY2thZ2UgaGFzIG5vIGVsZW1lbnRzIChlbXB0eSkgKDIwMTkwODE2L25zcHJlcGtnLTk2KQo+
IFsgMjMxMC44ODE0MDRdIEFDUEkgV2FybmluZzogXF9TQi5QQ0kwLkJSMkMuX1BSVDogUmV0dXJu
IFBhY2thZ2UgaGFzIG5vIGVsZW1lbnRzIChlbXB0eSkgKDIwMTkwODE2L25zcHJlcGtnLTk2KQo+
IFsgMjMxMS4wODAyMzVdIHJlYm9vdDogUmVzdGFydGluZyBzeXN0ZW0KPiBbIDIzMTEuMDkzMDg4
XSByZWJvb3Q6IG1hY2hpbmUgcmVzdGFydAo+IAo+IAo+IFRoYXQgc2VlbXMgbGlrZSBhIExPVCBv
ZiDigJxCcm9rZW4gcGlwZeKAnSB3YXJuaW5ncy4KPiAKPiBBbHNvLCB0aGVyZeKAmXMgbm8gcmVh
c29uIHRoZSBpbWFnZSB3b3VsZG7igJl0IGNvbnRhaW4gbWV0YS1kYXRhLCBzbyBJ4oCZbSBub3Qg
c3VyZSB3aHkgSeKAmW0gc2VlaW5nIHRoYXQgd2FybmluZywgZWl0aGVyLgo+IAo+IFRoYXQgc2Fp
ZOKApiB0aGUgc3lzdGVtIHNlZW1zIHRvIGJvb3QgdXAgb2theSB3aXRoIHRoZSBuZXcgaW1hZ2Ug
aW4tcGxhY2UuCj4gCj4gQnV0IGl0IHN1cmUgd291bGQgYmUgbmljZSB0byBub3QgdmlvbGF0ZSB0
aGUgUHJpbmNpcGxlIG9mIExlYXN0IEFzdG9uaXNobWVudCB0aHJvd2luZyBhbGwgb2YgdGhlc2Ug
d2FybmluZ3MuCj4gCj4gVGhhbmtzCj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53
cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21h
aWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQt
ZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
