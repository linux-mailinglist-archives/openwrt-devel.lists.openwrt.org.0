Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BECB17E09F
	for <lists+openwrt-devel@lfdr.de>; Mon,  9 Mar 2020 13:53:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D0lyoA+FCf8nYO3z1+WBjls0/bbvBF6Ck59mnmUJPC4=; b=AlJYF9zKSGdU4U
	pSlsKouWRMBPn4HxcPPjTm5ltMKRXQ0JJqg7F0JFFRHbzR27/D1dgzVlwuP0xL+uH/j3sZtiOSv5R
	kMZYbGNQ/VtViGPor0N3ukYHgSppHb5hyV4PHuVNa+2p1DxoxJyOoH+xD/IpOVeoARz2NVRs6V+jZ
	BCnJGU2bL80HqZ2fmAeZ3wc0K/y/Fj2R309KOtW3+sgzXwUoucQhjBteCNjMW8dUHgbeY+wwr4lIU
	xYDxGrE8/4jOnWad0gzlgz5W+NuXOwCRRN/iYUyKWKUoKxd7u1dS1HOxyu/F3xG3tagboN86rW7/9
	rzf1kOSK1owqleYogUOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBHtw-0000sc-Pk; Mon, 09 Mar 2020 12:52:56 +0000
Received: from util-01.infra.openwrt.org ([46.101.232.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBHtm-0000s2-DO
 for openwrt-devel@lists.openwrt.org; Mon, 09 Mar 2020 12:52:51 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by util-01.infra.openwrt.org with esmtp (Exim 4.89)
 (envelope-from <mail@adrianschmutzler.de>) id 1jBHte-00053N-6R
 for openwrt-devel@openwrt.org; Mon, 09 Mar 2020 08:52:38 -0400
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MYcy3-1ip1Ws0ruF-00Vjye; Mon, 09
 Mar 2020 13:28:33 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Heppler, J. Scott'" <shep971@centurylink.net>,
 <openwrt-devel@openwrt.org>
References: <20200307212333.GA6999@centurylink.net>
In-Reply-To: <20200307212333.GA6999@centurylink.net>
Date: Mon, 9 Mar 2020 13:28:32 +0100
Message-ID: <042901d5f60e$3f6caf00$be460d00$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQDa1k2JmLz5lNmIEwHGkRwhp+j6Dao2boBA
Content-Language: de
X-Provags-ID: V03:K1:skuihdwshaxm4IziVU3sV8MSSu/s5tN4l+w7/MnDuh+RQ633WKv
 lT6X8s1flEstuc7mvcTIyWsMtPDtDXNbu4pS22tpFlU5SazzSMd9z+ithUy6XzA1ZhXQxqL
 YWUnokVrN27181N577XGN/d6ebV3EYUAl5qoRNTCWWe11UDfd5USymlT6eDsoAcFmNzT/8m
 aFhRUhsG3bC6V9vA5kaAQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:r8VHimWLrBk=:xCasqrRqmQP+OCWg2XUtTv
 +48O2SmoPfom8PnLJQvGI5M8hpJSCrUCsFymx0ToEGr/onm4BQzKFY2T4iWDV5O1C7tDBqMg5
 NqNclT8zieZhSzb/IvNDDYrov7QdguZC9qulUQwnq/J2gauo/OU2R0iUOcqWrTRnNJFpU7Nnh
 JWLBzUgBqd3wYCQdlO9T6HbVP6u11wsTaXm78+fan5S4jKhr73tPtG8bCy8x7hijdurXRU9U7
 wAxW8oC5t3TR0YaNoa3gN4YOff+fIhgSI5Rt/NKNokpkja9gN3ti6VmlmPlgdnKT+43CrLsnt
 osT8D5X4OWpViMGNP90nsjYSVjegOFC01th4PVnFrmV7l1VdGEfIB6ZKJpJ6gDQ26PpMGbxqI
 11Go3WeO69l91miTR3JeLANbBjkmTF6K32CvXnYwh4bT5OxoVaHhbxJY+a0FCmxYbAUZYH3/2
 7eaoQIVL8eJ9zRTbUqDmNUAVhTn8YEygsro/RzTJvg7KCKHOILw/wqdEeNrpr9h1v83tj2Uwc
 MpJ6iYF0IxEPu/TE99u/SR741BbhBrXie5KsBrjYwj2wonNVGJDboXXxjKP1QV5E+zftWO1Kg
 aF4WK2z5uTuvjPWrdoYE8Ezj/4Ggg838bGAhcMdU8V//vseqJh7MD0MIYJTgtOU2oJtnasvlm
 FhsgRmbniArwUHGR1xa98DHu8HeGBmMlsUssttXyDWld7AYQDeQa/mcsDQPhfnDOKIbxvJmMJ
 vVh7ux5fE9EW9OJSytDHwWZtO5UZLubdirNDfBT54QfV5+zGzfdJg7NNUzqNKz8PzkkQo92y6
 92eZ0vFgU+c9rpRuGsNcId/ayk+52EbB0+47M4XIdSpKUoDLNy2NpXxT+emJkYUyIxapHJ1
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-01.infra.openwrt.org", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 jo@mein.io for details. Content preview:  Hi, > 
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: openwrt.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_055246_607367_565EC9C0 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.101.232.90 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 T_SPF_HELO_TEMPERROR   SPF: test of HELO record failed (temperror)
Subject: Re: [OpenWrt-Devel] ramips: adding support for TRENDnet DIR-810DR
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

SGksCgo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gRnJvbTogb3BlbndydC1kZXZlbCBb
bWFpbHRvOm9wZW53cnQtZGV2ZWwtYm91bmNlc0BsaXN0cy5vcGVud3J0Lm9yZ10gT24KPiBCZWhh
bGYgT2YgSGVwcGxlciwgSi4gU2NvdHQKPiBTZW50OiBTYW1zdGFnLCA3LiBNw6RyeiAyMDIwIDIy
OjI0Cj4gVG86IG9wZW53cnQtZGV2ZWxAb3BlbndydC5vcmcKPiBTdWJqZWN0OiBbT3BlbldydC1E
ZXZlbF0gcmFtaXBzOiBhZGRpbmcgc3VwcG9ydCBmb3IgVFJFTkRuZXQgRElSLTgxMERSCj4gCj4g
SSdtIGxvb2tpbmcgZm9yIHNvbWUgY2xhcmlmaWNhdGlvbiBvbiBhIHByaW9yIHBhdGNoOgo+IAo+
IEknbSBnZW5lcmF0aW5nIGEgbmV3IHNuYXBzaG90IGJ1aWxkIGFuZCBoYXZlIHRoZSBmb2xsb3dp
bmcgcXVlc3Rpb25zOgo+IAo+IDEpICBNeSBwcmlvciBwYXRjaCB3YXMgY3JpdGljaXplZCBmb3Ig
YSBsYWNrIG9mCj4gbXQ3NjIwL2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQvMDFfbGVkcyBlbnRyeS4g
IEkgd2FzIGJhc2luZyBteSBidWlsZCBvbgo+IHRoZSBELUxpbmsgRElSLTgxMEwgd2hpY2ggc2Vl
bXMgdG8gaGF2ZSB0aGUgc2FtZSBDYW1lbyBtYW51ZmFjdHVyZWQKPiBib2FyZC4gIFRoZSBELUxp
bmsgbGFja3MgYW55IGVudHJpZXMgaW4gMDFfbGVkcy4gIElzIHRoaXMgYW4gb3ZlcnNpZ2h0Cj4g
dGhhdCBJLCBhbmQgRElSLTgxMEwgZW50cnkgd2lsbCBuZWVkIHRvIGNvcnJlY3Q/ICBPciBpcyBp
dCBqdXN0IG5vdAo+IG5lZWRlZD8KCkkgd2FzIG5vdCBhd2FyZSB0aGF0IHRoZSBXQU4gTEVEIHNl
ZW1zIHRvIGJlIGNvbnRyb2xsZWQgYnkgdGhlIGRyaXZlciBhbmQgbm90IGJ5IHRoZSBkZXZpY2Ut
dHJlZSBvciB1c2Vyc3BhY2UgY29kZSAoYXMgcmVwb3J0ZWQgYnkgUm9nZXIpLgoKSWYgdGhhdCdz
IGFsc28gdGhlIGNhc2UgZm9yIHlvdXIgZGV2aWNlLCB5b3Ugd29uJ3QgbmVlZCB0byBlbnRlciBh
bnl0aGluZyBpbnRvIDAxX2xlZHMuCgpIb3cncyB0aGUgV0FOIExFRCBiZWhhdmluZyBmb3IgeW91
IGFuZCBpcyBpdCByZWZlcnJpbmcgdG8gdGhlIGNvcnJlY3QgcG9ydCAob3IgYSB3cm9uZyBvbmUg
YXMgUm9nZXIgcmVwb3J0ZWQgZm9yIERJUi04MTBMKS4KCj4gCj4gMikgIEkgdGhpbmsgaXQgd291
bGQgYmUgcG9zc2libGUgZm9yIGJvdGggdGhlIERJUi04MTBMIGFuZCBURVctODEwRFIgdG8KPiBo
YXZlIGZhY3RvcnkuYmluLiAgUHJlc2VudGx5LCBhIGZhY3RvcnkgaW1hZ2UgaXMgbmVlZGVkIGZv
ciBpbml0aWFsCj4gaW5zdGFsbGF0aW9uIGFuZCBpcyBwcm9kdWNlZCB1c2luZyBDYW1lbwo+IGNh
bWVvL25jYy9ob3N0VG9vbHMvbmNjX2F0dF9od2lkIHRvb2wuICBUaGlzIHRvb2wgaXMgZGlmZmlj
dWx0IHRvIHVzZSBhcwo+IGl0IHJlcXVpcmVzIDMyYml0IGxpYnMgYW5kIGZ1bGwgcGF0aHMgdG8g
aW1wbGVtZW50LiAgRXNzZW50aWFsbHkgdGhlCj4gZm9sbG93aW5nIHN0cmluZyBuZWVkcyB0byBi
ZSBhcHBlbmRlZCB0byB0aGUgc3lzdXBncmFkZSBpbWFnZToKPiAiCVRFVy04MTBEUgEEMS4xUgIC
V1cDAzEuMAUKMS4xM0IwNAoKSWYgeW91IHRoaW5rIGl0J3MgZWFzeSwgaW5jbHVkZSBpdCBpbiB5
b3VyIHBhdGNoIGFscmVhZHkuIE90aGVyd2lzZSwgZmlyc3QgcHJvdmlkZSBzeXN1cGdyYWRlIHN1
cHBvcnQgYW5kIHRoZW4gcHJvdmlkZSBmYWN0b3J5IGluIGEgc2Vjb25kIHN0ZXAuCgpPYnZpb3Vz
bHksIG5vdCBoYXZpbmcgYSBmYWN0b3J5IGltYWdlIHdpbGwgbWFrZSB3cml0aW5nIGZsYXNoaW5n
IGluc3RydWN0aW9ucyBtb3JlIGNvbXBsaWNhdGVkLgoKQmVzdAoKQWRyaWFuCgoKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1h
aWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMu
b3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
