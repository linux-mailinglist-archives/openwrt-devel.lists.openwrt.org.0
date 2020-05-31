Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2E71E9AB8
	for <lists+openwrt-devel@lfdr.de>; Mon,  1 Jun 2020 00:43:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:Mime-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cSmOWluhq1A2+YGoa330YTROIvze4IpGRwb85fP5HJ8=; b=eMFi6cojI6y4Jw
	xJ/z2GRRBIDIQ5V5uyLhrAN17vgiTJFRqQE+5cEd9BuF6d+jmhhq8YgLuZfJXu66FgM/vngm2Pc+i
	k+5IL6Q1ETLK1jEfKgO77UwuXdquavW72g9omprcfVHSAypsCWnvj8LHwwKE9Zyu8b7LF1nZOsiqM
	A6ws5gZlguiljr0hBc7aQ85VcxD3xkx/b1RVdKxVhoVU+2u2N0q20HQsZPTfTGt2N0Ymgz+2HopZ7
	7RhZNEesuVF7yonJeftBaky7GUfTKm17UFO7Y2/zE2rm/dC7yCSvbJRVz0zT8oSu+xKWV3K4Qs04c
	nNdQ+pHukGUV5VzoyL0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfWft-0000B8-70; Sun, 31 May 2020 22:43:25 +0000
Received: from mail.redfish-solutions.com ([45.33.216.244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfWfo-0000Aq-5Y
 for openwrt-devel@lists.openwrt.org; Sun, 31 May 2020 22:43:21 +0000
Received: from [192.168.1.38] ([192.168.1.38]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id 04VMhGxV019580
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <openwrt-devel@lists.openwrt.org>; Sun, 31 May 2020 16:43:17 -0600
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Message-Id: <FEA626F4-A60D-48EE-9B72-4F74F639D463@redfish-solutions.com>
Date: Sun, 31 May 2020 16:43:09 -0600
To: openwrt-devel <openwrt-devel@lists.openwrt.org>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_154320_336718_2B196813 
X-CRM114-Status: UNSURE (   7.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] Lots of errors w/ sysupgrade on x86_64
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

SGFkIHRvIHNldCB1cCBjb25zb2xlIHJlZGlyZWN0aW9uIHRvIGNhcHR1cmUgdGhpcywgYnV0IHRo
aXMgaXMgd2hhdCBJ4oCZbSBzZWVpbmcgb24gYSBmYWlybHkgcmVjZW50IGJ1aWxkIG9mIG1hc3Rl
ciAoYWJvdXQgMiB3ZWVrcyBvbGQpOgoKcm9vdEBPcGVuV3J0Oi8jIGlmZG93biB3YW4Kcm9vdEBP
cGVuV3J0Oi8jIApyb290QE9wZW5XcnQ6LyMgCnJvb3RAT3BlbldydDovIyBzeXN1cGdyYWRlIC90
bXAvb3BlbndydC1yMTMzNjBcKzY0LTQ2NjFiMDUzOTAteDg2LTY0LWdlbmVyaWMtc3F1YXNoZnMt
Y29tYmluZWQtZWZpLmltZyAKSW1hZ2UgbWV0YWRhdGEgbm90IGZvdW5kClJlYWRpbmcgcGFydGl0
aW9uIHRhYmxlIGZyb20gYm9vdGRpc2suLi4KY2F0OiB3cml0ZSBlcnJvcjogQnJva2VuIHBpcGUK
UmVhZGluZyBwYXJ0aXRpb24gdGFibGUgZnJvbSBpbWFnZS4uLgpTYXZpbmcgY29uZmlnIGZpbGVz
Li4uCkNvbW1lbmNpbmcgdXBncmFkZS4gQ2xvc2luZyBhbGwgc2hlbGwgc2Vzc2lvbnMuCldhdGNo
ZG9nIGhhbmRvdmVyOiBmZD03Ci0gd2F0Y2hkb2cgLQpraWxsYWxsOiB0ZWxuZXRkOiBubyBwcm9j
ZXNzIGtpbGxlZApraWxsYWxsOiBkcm9wYmVhcjogbm8gcHJvY2VzcyBraVNlbmRpbmcgVEVSTSB0
byByZW1haW5pbmcgcHJvY2Vzc2VzIC4uLiBudHBkIHNoIHNubXBkIGRoY3BkIGlwc2V0LWRucyBj
b2xsZWN0ZCBsbGRwZCBsbGRwZCBzbWFydGQgbmFtZWQgc2xlZXAgdWJ1c2QgYXNrZmlyc3QgdXJu
Z2QgbmV0aWZkIHJuZ2QgY3JvbmQgbGlnaHR0cGQgc3NoZCBzeXNsb2ctbmcgClNlbmRpbmcgS0lM
TCB0byByZW1haW5pbmcgcHJvY2Vzc2VzIC4uLiAKU3dpdGNoaW5nIHRvIHJhbWRpc2suLi4KUGVy
Zm9ybWluZyBzeXN0ZW0gdXBncmFkZS4uLgpSZWFkaW5nIHBhcnRpdGlvbiB0YWJsZSBmcm9tIGJv
b3RkaXNrLi4uCmRkOiB3YXJuaW5nOiBwYXJ0aWFsIHJlYWQgKDgxOTIgYnl0ZXMpOyBzdWdnZXN0
IGlmbGFnPWZ1bGxibG9jawowKzYzIHJlY29yZHMgaW4KMCs2MyByZWNvcmRzIG91dAoxMTAxODI0
IGJ5dGVzICgxLjEgTUIsIDEuMSBNaUIpIGNvcGllZCwgMC4wMDQ5MjM0NyBzLCAyMjQgTUIvcwpS
ZWFkaW5nIHBhcnRpdGlvbiB0YWJsZSBmcm9tIGltYWdlLi4uCldyaXRpbmcgaW1hZ2UgdG8gL2Rl
di9udm1lMG4xcDEuLi4KY2F0OiB3cml0ZSBlcnJvcjogQnJva2VuIHBpcGUKNDA5NTkrMCByZWNv
cmRzIGluCjE5KzEgcmVjb3JkcyBvdXQKMjA5NzEwMDggYnl0ZXMgKDIxIE1CLCAyMCBNaUIpIGNv
cGllZCwgMC4wOTYzMzEzIHMsIDIxOCBNQi9zCldyaXRpbmcgaW1hZ2UgdG8gL2Rldi9udm1lMG4x
cDIuLi4KNDYyODQ3KzAgcmVjb3JkcyBpbgoyMjUrMSByZWNvcmRzIG91dAoyMzY5Nzc2NjQgYnl0
ZXMgKDIzNyBNQiwgMjI2IE1pQikgY29waWVkLCAwLjgxMDI4OCBzLCAyOTIgTUIvcwpXcml0aW5n
IG5ldyBVVUlEIHRvIC9kZXYvbnZtZTBuMS4uLgo0KzAgcmVjb3JkcyBpbgo0KzAgcmVjb3JkcyBv
dXQKY2F0OiB3cml0ZSBlcnJvcjogQnJva2VuIHBpcGUKNCBieXRlcyBjb3BpZWQsIDAuMDA0Mzk3
MTMgcywgMC45IGtbIDIzMDguOTI3MTU5XSBGMkZTLWZzIChudm1lMG4xcDEpOiBNYWdpYyBNaXNt
YXRjaCwgdmFsaWQoMHhmMmY1MjAxMCkgLSByZWFkKDB4MCkKQi9zClsgMjMwOC45NDU2NjddIEYy
RlMtZnMgKG52bWUwbjFwMSk6IENhbid0IGZpbmQgdmFsaWQgRjJGUyBmaWxlc3lzdGVtIGluIDF0
aCBzdXBlcmJsb2NrClsgMjMwOC45NjMxNDFdIEYyRlMtZnMgKG52bWUwbjFwMSk6IE1hZ2ljIE1p
c21hdGNoLCB2YWxpZCgweGYyZjUyMDEwKSAtIHJlYWQoMHg2MDIwNjAxKQpbIDIzMDguOTgwNDg3
XSBGMkZTLWZzIChudm1lMG4xcDEpOiBDYW4ndCBmaW5kIHZhbGlkIEYyRlMgZmlsZXN5c3RlbSBp
biAydGggc3VwZXJibG9jawpVcGdyYWRpbmcgYm9vdGxvYWRlciBvbiAvZGV2L252bWUwbjEuLi4K
dG91Y2g6IC90bXAvYm9vdC9ncnViL3VwZ3JhZGVkOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5
ClVwZ3JhZGUgY29tcGxldGVkClJlYm9vdGluZyBzeXN0ZW0uLi4KdW1vdW50OiBjYW4ndCB1bm1v
dW50IC9kZXY6IFJlc291cmNlIGJ1c3kKdW1vdW50OiBjYW4ndCB1bm1vdW50IC90bXA6IFJlc291
cmNlIGJ1c3kKWyAyMzEwLjg1MjU4Ml0gQUNQSSBXYXJuaW5nOiBcX1NCLlBDSTAuQlIyQy5fUFJU
OiBSZXR1cm4gUGFja2FnZSBoYXMgbm8gZWxlbWVudHMgKGVtcHR5KSAoMjAxOTA4MTYvbnNwcmVw
a2ctOTYpClsgMjMxMC44ODE0MDRdIEFDUEkgV2FybmluZzogXF9TQi5QQ0kwLkJSMkMuX1BSVDog
UmV0dXJuIFBhY2thZ2UgaGFzIG5vIGVsZW1lbnRzIChlbXB0eSkgKDIwMTkwODE2L25zcHJlcGtn
LTk2KQpbIDIzMTEuMDgwMjM1XSByZWJvb3Q6IFJlc3RhcnRpbmcgc3lzdGVtClsgMjMxMS4wOTMw
ODhdIHJlYm9vdDogbWFjaGluZSByZXN0YXJ0CgoKVGhhdCBzZWVtcyBsaWtlIGEgTE9UIG9mIOKA
nEJyb2tlbiBwaXBl4oCdIHdhcm5pbmdzLgoKQWxzbywgdGhlcmXigJlzIG5vIHJlYXNvbiB0aGUg
aW1hZ2Ugd291bGRu4oCZdCBjb250YWluIG1ldGEtZGF0YSwgc28gSeKAmW0gbm90IHN1cmUgd2h5
IEnigJltIHNlZWluZyB0aGF0IHdhcm5pbmcsIGVpdGhlci4KClRoYXQgc2FpZOKApiB0aGUgc3lz
dGVtIHNlZW1zIHRvIGJvb3QgdXAgb2theSB3aXRoIHRoZSBuZXcgaW1hZ2UgaW4tcGxhY2UuCgpC
dXQgaXQgc3VyZSB3b3VsZCBiZSBuaWNlIHRvIG5vdCB2aW9sYXRlIHRoZSBQcmluY2lwbGUgb2Yg
TGVhc3QgQXN0b25pc2htZW50IHRocm93aW5nIGFsbCBvZiB0aGVzZSB3YXJuaW5ncy4KClRoYW5r
cwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
