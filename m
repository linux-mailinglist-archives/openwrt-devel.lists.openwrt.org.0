Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CAB9FB66C
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 Nov 2019 18:29:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:To:
	From:References:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IO3I+Wjo/q7vVH7uHmo29IzkQ6cmoi6783TG+jRSaxU=; b=HXyimScpNIbDKYntsjIF9B6Fz
	M7y3esnW8spvH3f3XmE+AyrOjYUeAGZz1t+S/LkhohbL58VBmnGUBvIGFaZUHS41qmERO8lCOUafX
	Rl5bzwniiwFW1LfqLbo0i6ClBZaQ2YBDPcCYi2XZEiZK6SM0M/IG2+HriqBPzQcWw3efxxQZMoxmZ
	s9TJ6yw7I6SY1VEGc+Y2xO/k4ZzBv8CZxL3/nIZGyGaGPpXNFeTZy8ITSKzgAHzIgE09FrNIltY3C
	MlJAS7J/8vEvoJ8sfWeaGFZZx3bwQ6N4aIgwQUDs3C+UucGnc2wwYSxbNldha6Mv1vn3+9gYT0Osa
	2hJXtnlTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUwRu-00008W-Uo; Wed, 13 Nov 2019 17:28:58 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUwRm-00008B-JC
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 17:28:52 +0000
Received: from JKLETSKY-MBP15.local (portal.bevandjeff.com [206.189.65.121])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id A6C5C4966D;
 Wed, 13 Nov 2019 09:28:18 -0800 (PST)
References: <20191113171505.26128-1-miquel.raynal@bootlin.com>
From: Jeff Kletsky <lede@allycomm.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-Forwarded-Message-Id: <20191113171505.26128-1-miquel.raynal@bootlin.com>
Message-ID: <682adf05-49f1-c40c-b84f-1956f4455b29@allycomm.com>
Date: Wed, 13 Nov 2019 09:28:16 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20191113171505.26128-1-miquel.raynal@bootlin.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_092850_633613_A50E600D 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [Info] Fwd: [PATCH v4 0/4] MTD concat
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

SWYgSSB1bmRlcnN0YW5kIHRoaXMgcHJvcGVybHksIHRoZSBhYmlsaXR5IHRvIGxvZ2ljYWxseSBj
b25jYXRlbmF0ZQpNVEQgcGFydGl0aW9ucyBtYXkgaGF2ZSBiZW5lZml0cyB0byB0aGUgcHJvamVj
dCBpbiB0aGUgZnV0dXJlLgoKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvcGlwZXJtYWlsL2xp
bnV4LW10ZC8yMDE5LU5vdmVtYmVyLzA5MjUzNS5odG1sCgpKZWZmCgotLS0KCgpIZWxsbywKCkEg
eWVhciBhZ28gQmVybmhhcmQgRnJhdWVuZGllbnN0IHN0YXJ0ZWQgYW4gZWZmb3J0IHRvIGJyaW5n
IE1URApkZXZpY2VzIGNvbmNhdGVuYXRpb24gZ2VuZXJpYyBbMV0uIFRvZGF5IEkgYWxzbyBuZWVk
IHRoaXMKY29uY2F0ZW5hdGlvbiB0byBiZSBwb3NzaWJsZSBpbiBvcmRlciB0byBzdXBwb3J0IGNv
bmZpZ3VyYXRpb25zIHdoZXJlCnR3byBNVEQgZGV2aWNlcyBhcmUgdHJlYXRlZCBsaWtlIG9uZSBi
aWdnZXIgaW4gb3JkZXIgdG8gYmUgYWJsZSB0bwpkZWZpbmUgcGFydGl0aW9ucyBhY3Jvc3MgY2hp
cCBib3VuZGFyaWVzLCBoZW5jZSByZXZpdmluZyB0aGlzCnBhdGNoc2V0LgoKQWZ0ZXIgaGF2aW5n
IHRhbGtlZCB3aXRoIE1hcmsgQnJvd24gYW5kIEJvcmlzIEJyZXppbGxvbiB0aGlzIGFwcHJvYWNo
CnNlZW1zIHRvIGJlIHRoZSBjbGVhbmVzdCBhbmQgZWFzaWVzdCBvbmUuIElmIGRpc2N1c3Npb25z
IG5lZWQgdG8KaGFwcGVuLCBpdCBpcyBwcm9iYWJseSBvbiB0aGUgZHQtYmluZGluZ3MgZmlsZSB3
aGVyZSBJIHRyaWVkIHRvCnN1bW1hcml6ZSB0aGUgaXNzdWUgYW5kIHRoZSBwb3NzaWJsZSBzb2x1
dGlvbnMgaW4gdGhlIGNvbW1pdCBsb2cuCgpJIGNoYW5nZWQgYSBiaXQgdGhlIGNvZGUgbG9naWMg
YW5kIHN0eWxlIGJ1dCBub3Qgc28gbXVjaCwgYWxsIHRoZQpjaGFuZ2VzIHdpdGggdGhlIDIwMTgg
dmVyc2lvbiBhcmUgaW4gWyBdIGluIHRoZSBjb21taXQgbG9ncy4KCkkgd291bGQgbGlrZSB0byBh
ZGQgYW5vdGhlciB3YXkgdG8gY29uY2F0ZW5hdGUgZGV2aWNlczogd2l0aCBtb2R1bGUKcGFyYW1l
dGVycy9hcmd1bWVudHMgb24gdGhlIGNtZGxpbmUuIEkgd2lsbCBleHRlbmQgdGhpcyB3b3JrIG9u
Y2UgdGhlCmJpbmRpbmdzIHdpbGwgaGF2ZSBiZWVuIGRpc2N1c3NlZCBhbmQgYWNjZXB0ZWQuCgpU
aGFua3MsCk1pcXXDqGwKClsxXSAKaHR0cHM6Ly9sd24ubmV0L21sL2xpbnV4LWtlcm5lbC8yMDE4
MDkwNzE3MzUxNS4xOTk5MC0xLWtlcm5lbEBub3NwYW0ub2JlbGlrcy5kZS8KCgpCZXJuaGFyZCBG
cmF1ZW5kaWVuc3QgKDMpOgptdGQ6IEFkZCBnZXRfbXRkX2RldmljZV9ieV9ub2RlKCkgaGVscGVy
CmR0LWJpbmRpbmdzOiBtdGQ6IERlc2NyaWJlIG10ZC1jb25jYXQgZGV2aWNlcwptdGQ6IEFkZCBk
cml2ZXIgZm9yIGNvbmNhdGVuYXRpbmcgZGV2aWNlcwoKTWlxdWVsIFJheW5hbCAoMSk6Cm10ZDog
Y29uY2F0OiBGaXggYSBjb21tZW50IHJlZmVycmluZyB0byBhbiB1bmtub3duIHN5bWJvbAoKLi4u
L2RldmljZXRyZWUvYmluZGluZ3MvbXRkL210ZC1jb25jYXQueWFtbCB8IDU2ICsrKysrKysrCmRy
aXZlcnMvbXRkL0tjb25maWcgfCA4ICsrCmRyaXZlcnMvbXRkL01ha2VmaWxlIHwgMSArCmRyaXZl
cnMvbXRkL210ZF92aXJ0X2NvbmNhdC5jIHwgMTMyICsrKysrKysrKysrKysrKysrKwpkcml2ZXJz
L210ZC9tdGRjb25jYXQuYyB8IDUgKy0KZHJpdmVycy9tdGQvbXRkY29yZS5jIHwgMzggKysrKysK
aW5jbHVkZS9saW51eC9tdGQvbXRkLmggfCAyICsKNyBmaWxlcyBjaGFuZ2VkLCAyMzggaW5zZXJ0
aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9tdGQvbXRkLWNvbmNhdC55YW1sCmNyZWF0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL210ZC9tdGRfdmlydF9jb25jYXQuYwoKLS0gCjIuMjAuMQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eCBNVEQgZGlz
Y3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1tdGQvCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0
cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8v
b3BlbndydC1kZXZlbAo=
