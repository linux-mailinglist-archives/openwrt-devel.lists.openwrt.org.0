Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA81E1161B4
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Dec 2019 14:34:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pE8ivSaGFygdyIXqc9fZReal7lo55ihGlNDhUwOdM5c=; b=k0u3i+UvjUScIaxeNpUcnGuWC
	egFaCwrAOPvqiKVuW8CvToKnD3LDUN0f8nHWgejbpq62pIR9ObMtkdgJGqwsA8m0l6Uq9QNcPVBF6
	JY8wTOAOsqwUu2Ed0qRDRpwkXFUH5FzaIn7rwgYuls99aSIIyY+zFaBDQ+1EEaVgk+//+mhwzW9A4
	WE7Xr1y0ZqHzlW7xQalWYFlhn6n0l6IXdaa9ZhNs4trAx4+0mPUceYCio7MdG4J+u1nBXihR+pvZe
	cGwYc7FqJ0yVsuY2/wi2bBJjVJH4nzMe0tsNO7eEK03rp3c2roxDDpmLlBOVp4XaNMql7ERcp/sMk
	TXffGhH5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idwhQ-00055j-AE; Sun, 08 Dec 2019 13:34:12 +0000
Received: from lmr1.uibk.ac.at ([138.232.1.142] helo=smtp.uibk.ac.at)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idwhH-00053f-OB
 for openwrt-devel@lists.openwrt.org; Sun, 08 Dec 2019 13:34:05 +0000
Received: from mysh.local ([95.90.197.217]) (authenticated bits=0)
 by smtp.uibk.ac.at (8.14.4/8.14.4/F1) with ESMTP id xB8DXtF5010684
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
 Sun, 8 Dec 2019 14:33:56 +0100
To: openwrt-devel@lists.openwrt.org
References: <20191207114547.5209-1-peter.stadler@student.uibk.ac.at>
 <CAJQUmm6fVs_j4wpaZAeciuEVhvkWHBs8wbb5MX-kkkX+VQFdNg@mail.gmail.com>
From: Peter Stadler <peter.stadler@student.uibk.ac.at>
Message-ID: <eb0ce9ef-c822-49ae-f533-1c87e63ec53c@student.uibk.ac.at>
Date: Sun, 8 Dec 2019 14:33:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAJQUmm6fVs_j4wpaZAeciuEVhvkWHBs8wbb5MX-kkkX+VQFdNg@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: () -15.0 ALL_TRUSTED,RCV_SMTP_AUTH,RCV_SMTP_UIBK
X-Scanned-By: MIMEDefang 2.84 at uibk.ac.at
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_053404_106931_657FC7FA 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [138.232.1.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] UBus wire protocol documentation
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
Cc: Michael Jones <mike@meshplusplus.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SSBrbm93IG9ubHkgdGhlIHNvbWVob3cgZ2VuZXJpYyB3aWtpIHBhZ2VzIG9mIE9wZW5XcnQgYW5k
IGxvb2tlZCBtb3N0bHkgCmF0IHRoZSBzb3VyY2VzOgoKaHR0cHM6Ly9naXQub3BlbndydC5vcmcv
P3A9cHJvamVjdC91YnVzLmdpdDthPWJsb2I7Zj1saWJ1YnVzLmgKCmh0dHBzOi8vZ2l0Lm9wZW53
cnQub3JnLz9wPXByb2plY3QvbGlidWJveC5naXQ7YT1ibG9iO2Y9YmxvYm1zZ19qc29uLmMKClRo
ZXJlIGlzIGFsc28gYW4gZXhhbXBsZSBmb3IgYSBjbGllbnQgaW4gdGhlIHRyZWUuIEN1cnJlbnRs
eSBJIGhhdmUgYSAKd29ya2luZyBhcHByb2FjaCwKCmJ1dCBJIGFtIG5vdCBzdXJlIEkgYW0gZG9p
bmcgaXQgcmlnaHQuCgoKVGhlIGZvbGxvd2luZyBwcm9ncmFtIGlzIGEgc21hbGwgZXhhbXBsZSB0
aGF0IGV4dHJhY3RzIGFsbCBsb2NhbCBJUHMgCmZyb20gdGhlIGRhdGEgdGhhdCB0aGUKCmNsaSB3
b3VsZCByZXBvcnQgZm9yOgoKIMKgwqDCoMKgwqDCoMKgwqDCoCB1YnVzIGNhbGwgbmV0d29yay5p
bnRlcmZhY2UubGFuIHN0YXR1cwoKVGhlIGZpcnN0IGZ1bmN0aW9ucyBhcmUgcXVpdGUgZ2VuZXJp
YywgdGhlIGNhbGxiYWNrIGRvZXMgdGhlIGN1c3RvbSB3b3JrLgoKKElmIGl0IGhlbHBzLCB5b3Ug
Y2FuIHVzZSBpdCBhcyB0aGUgaW5jbHVkZWQgbGlicyBhbGxvdyBpdCwKCkkgY29uc2lkZXIgbXkg
cGFydHMgYXMgcHVibGljIGRvbWFpbjogQ0MwKQoKCmcrKyAtT3MgLVdhbGwgLVdlcnJvciAtV2V4
dHJhIC0tc3RkPWMrKzE3IC1nMyAtbHVidXMgLWx1Ym94CgpERVBFTkRTOj0rbGlidWJ1cyArbGli
dWJveCArbGlic3RkY3BwCgovLyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLSBtYWluLmNwcCAKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLQoKLy8gdWJ1c190cmF2ZXJzZSguLi4pIHdhbGtzIHRoZSBtc2cgdHJlZSBhbmQgcHJv
Y2Vzc2VzIHZhbHVlcyBmb3IgCm1hdGNoaW5nIGtleXM6Ci8vwqDCoMKgIG1zZyA9IG1lc3NhZ2Ug
dGhhdCB1YnVzIHNlbnQgdG8gYSBjYWxsYmFjayBmdW5jdGlvbiBzZXQgdXAgYnkgCnVidXNfaW52
b2tlLgovL8KgwqDCoCBwcm9jZXNzID0gZnVuY3Rpb24gdG8gd2hpY2ggdmFsdWVzIGFyZSBzZW5k
IGlmIGFsbCB0aGUgZm9sbG93aW5nIAprZXlzIG1hdGNoLgovLyDCoMKgIGtleSwgLi4uIGtleXMg
PSBtYXRjaCB0aGUga2V5cyBvZiB0aGUgbXNnIHRyZWUgaW4gdGhlIGdpdmVuIG9yZGVyOyAKd2Ug
YXJlIGF0Ci8vwqAgwqAgwqAgwqAgdGhlIGVuZCBpZiB0aGVyZSBpcyBvbmx5IG9uZSBrZXkgbGVm
dCwgZG8gbm90aGluZyBpZiB0aGVyZSBpcyAKbm9uZS4KLy/CoCDCoCAod29ya3MgaWYgdGhlIG51
bWJlciBvZiBrZXlzIGlzIGtub3duIGF0IGNvbXBpbGUgdGltZSwgZWxzZSB1c2UgCnZhbGlzdCAu
Li4pCgp2b2lkIHVidXNfdHJhdmVyc2UoY29uc3QgYmxvYl9hdHRyICogbXNnLCBmdW5jdGlvbjx2
b2lkKGNvbnN0IHZvaWQgKiAKdmFsKT4gcHJvY2VzcykKe30KCnRlbXBsYXRlPGNsYXNzIFQsIGNs
YXNzIC4uLiBUeXBlcz4KCnZvaWQgdWJ1c190cmF2ZXJzZShjb25zdCBibG9iX2F0dHIgKiBtc2cs
IGZ1bmN0aW9uPHZvaWQoY29uc3Qgdm9pZCAqIAp2YWwpPiBwcm9jZXNzLAoKIMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBUIGtleSwgVHlwZXMgLi4uIGtleXMpCnsKIMKgwqDC
oCBzaXplX3QgbGVuOwogwqDCoMKgIGJsb2JfYXR0ciAqIHBvczsKIMKgwqDCoCBibG9ibXNnX2Zv
cl9lYWNoX2F0dHIocG9zLCBtc2csIGxlbikgewogwqDCoMKgwqDCoMKgwqAgY29uc3QgY2hhciAq
IG5hbWUgPSBibG9ibXNnX25hbWUocG9zKTsKIMKgwqDCoMKgwqDCoMKgIGlmIChzdHJjbXAobmFt
ZSwga2V5KSAhPSAwKSB7IGNvbnRpbnVlOyB9CiDCoMKgwqDCoMKgwqDCoCBzd2l0Y2ggKGJsb2Jf
aWQocG9zKSkgewogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjYXNlIEJMT0JNU0dfVFlQRV9UQUJM
RTogW1tmYWxsdGhyb3VnaF1dCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNhc2UgQkxPQk1TR19U
WVBFX0FSUkFZOiB1YnVzX3RyYXZlcnNlKHBvcywgcHJvY2Vzcywga2V5cy4uLik7CiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGJyZWFrOwogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkZWZhdWx0OiBp
ZiAoc2l6ZW9mLi4uKGtleXMpPT0wKSB7IApwcm9jZXNzKGJsb2Jtc2dfZGF0YShwb3MpKTsgfQog
wqDCoMKgwqDCoMKgwqAgfQogwqDCoMKgIH0KfQoKCnN0YXRpYyBpbnQgdWJ1c19jYWxsKGNvbnN0
IGNoYXIgKiBwYXRoLCBjb25zdCBjaGFyICogbWV0aG9kLAogwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB1YnVzX2RhdGFfaGFuZGxlcl90IGNhbGxiYWNrKQp7CiDCoMKg
wqAgdWJ1c19jb250ZXh0ICogY3R4ID0gdWJ1c19jb25uZWN0KE5VTEwpOwogwqDCoMKgIGlmIChj
dHg9PU5VTEwpIHsgcmV0dXJuIC0xOyB9CiDCoMKgwqAgdWludDMyX3QgaWQ7CiDCoMKgwqAgaW50
IHJldCA9IHVidXNfbG9va3VwX2lkKGN0eCwgcGF0aCwgJmlkKTsKIMKgwqDCoCBpZiAocmV0PT0w
KSB7CiDCoMKgwqDCoMKgwqDCoCBzdGF0aWMgYmxvYl9idWYgcmVxOwogwqDCoMKgwqDCoMKgwqAg
YmxvYl9idWZfaW5pdCgmcmVxLCAwKTsKIMKgwqDCoMKgwqDCoMKgIGludCB0aW1lb3V0ID0gMjAw
OwogwqDCoMKgwqDCoMKgwqAgcmV0ID0gdWJ1c19pbnZva2UoY3R4LCBpZCwgbWV0aG9kLCByZXEu
aGVhZCwgY2FsbGJhY2ssIE5VTEwsIAp0aW1lb3V0KTsKIMKgwqDCoCB9CiDCoMKgwqAgaWYgKGN0
eCkgeyB1YnVzX2ZyZWUoY3R4KTsgfQogwqDCoMKgIHJldHVybiByZXQ7Cn0KCgp2b2lkIGlwX2Nh
bGxiYWNrKHVidXNfcmVxdWVzdCAqIHJlcSwgaW50IHR5cGUsIGJsb2JfYXR0ciAqIG1zZykKewog
wqDCoMKgIGlmICghbXNnKSB7IHJldHVybjsgfQogwqDCoMKgIHN0cmluZyBpcHMgPSAiIjsKIMKg
wqDCoCBhdXRvIGFkZF9pcCA9IFsmaXBzXSAoY29uc3Qgdm9pZCAqIHZhbCkgLT4gdm9pZAogwqDC
oMKgIHsKIMKgwqDCoMKgwqDCoMKgIGlwcyArPSAoY2hhciAqKXZhbDsKIMKgwqDCoMKgwqDCoMKg
IGlwcyArPSAiICI7CiDCoMKgwqAgfTsKIMKgwqDCoCB1YnVzX3RyYXZlcnNlKG1zZywgYWRkX2lw
LCAiaXB2NC1hZGRyZXNzIiwgIiIsICJhZGRyZXNzIik7CiDCoMKgwqAgdWJ1c190cmF2ZXJzZSht
c2csIGFkZF9pcCwgImlwdjYtYWRkcmVzcyIsICIiLCAiYWRkcmVzcyIpOwogwqDCoMKgIGNvdXQ8
PCJJUHM6ICI8PGlwczw8ZW5kbDsKfQoKCmludCBtYWluKGludCBhcmdjLCBjaGFyICogYXJndltd
KSB7CiDCoMKgwqAgdWJ1c19jYWxsKCJuZXR3b3JrLmludGVyZmFjZS5sYW4iLCAic3RhdHVzIiwg
aXBfY2FsbGJhY2spOwogwqDCoMKgIHJldHVybiAwOwp9CgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Bl
bndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21h
aWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
