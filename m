Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E2A14FAE5
	for <lists+openwrt-devel@lfdr.de>; Sun,  2 Feb 2020 00:01:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HiC1mXXDD0bH32vuw2duq+nq48NRpxjkC+K31tjAuYQ=; b=j/OdywNmSiIj5/
	ja+0kBuf0drP14wGZ1u5nb9DuXU9vl2dT4ZNx51TJTKgFppweKPtVMzIYovzKTsY/eMMIMiH32Nxt
	ynUyHeFkqaxWlS9vUBdS8Pwf0wlxrVPn/tUQVpgo7+P/9yzHO8AIC4ZxQpADMw2GyIsg81hcJcMyf
	pbeQ3VrPhe264TTwqHkI+IyfBpf/i6cIbYt+FlLZfhNDp5FJwDQCMrPRLFTnbabDDox4VNSkJqF8i
	MZ+es3gNz4oAUult6F16OhgRX71SZ1nssQt+9Vm36drblTI6BTUxIfyPK7ZM40T8ytclWD6sxcs3r
	cW/Ic55VIeqp7b+xQ5UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iy1kv-0006Kj-Sk; Sat, 01 Feb 2020 23:00:49 +0000
Received: from masdeu.rogerpueyo.com ([5.134.119.116])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iy1kq-0006KE-DZ
 for openwrt-devel@lists.openwrt.org; Sat, 01 Feb 2020 23:00:45 +0000
Received: from [IPv6:2a0f:de00:fe00:1500:90ae:8440:c40:4f10] (unknown
 [IPv6:2a0f:de00:fe00:1500:90ae:8440:c40:4f10])
 by masdeu.rogerpueyo.com (Postfix) with ESMTPSA id 737B24B1;
 Sun,  2 Feb 2020 00:00:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rogerpueyo.com;
 s=201905; t=1580598025;
 bh=GKHcm58ao7bk1WQUcpATOfafDHx402wdifvl1nbOE/4=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=mzzRP0p6OejcA880fp1FZQkJNxn/Xk0rxnwad7lmxwOHfEEl+zGz6d/TCftORcdn/
 aC7U65UZMWB99lLneNKlgxQ2ZuG+QAdu5rNrGwJ/iBsSXpjv+AcKFfUMeOkYLWx+rE
 TCb9kNOVsmyh9/kFb5aHm5hB3YmxieNAu+WbP3Pd3fDtuEhliZ47wOoMzmsQjUCIL2
 kqb3X+1YAW1aZMl4osqg/AqyCUuwatX4ApwqAROhfMVHFo/QwlTuXf0y1ZzcduO885
 J67pSRmF/b+1F0AzE3tSr9eWUiD06xFrxj18rZk4vAMmi1fJDmk5wxBC1Xkt0RSihT
 n15HplEmh8pVA==
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 mail@adrianschmutzler.de
References: <00cd01d5d928$14be1b20$3e3a5160$@adrianschmutzler.de>
 <CAFBinCBRhs50AiBnaZQ5eoYZ4ZvCxaDnYENfpLPRQPErO6PCtA@mail.gmail.com>
From: Roger Pueyo Centelles <rogerpueyo@rogerpueyo.com>
Message-ID: <51dfd1a8-7573-2afc-e834-c1ed60c64514@rogerpueyo.com>
Date: Sun, 2 Feb 2020 00:00:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAFBinCBRhs50AiBnaZQ5eoYZ4ZvCxaDnYENfpLPRQPErO6PCtA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200201_150044_595617_BB391D80 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] ath79 equivalent of disable_smarteee
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgTWFydGluLCBBZHJpYW4sCgpUaGFua3MgZm9yIHRoZSBpbmZvLiBUaGUgZGV2aWNlIGlzIGFk
dmVydGlzaW5nIEVFRSBjYXBhYmlsaXRpZXMsIGFuZCBzbwppcyB0aGUgYWRhcHRlciBvbiBteSBj
b21wdXRlciBpdCBpcyBjb25uZWN0ZWQgdG86Cgpyb290QGNvbXB1dGVyOn4jIGV0aHRvb2wgLS1z
aG93LWVlZSBldGgyCkVFRSBTZXR0aW5ncyBmb3IgZXRoMjoKwqDCoCDCoEVFRSBzdGF0dXM6IGVu
YWJsZWQgLSBhY3RpdmUKwqDCoCDCoFR4IExQSTogZGlzYWJsZWQKwqDCoCDCoFN1cHBvcnRlZCBF
RUUgbGluayBtb2RlczrCoCAxMDBiYXNlVC9GdWxsCsKgwqAgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDEwMDBiYXNlVC9GdWxsCsKgwqAgwqBB
ZHZlcnRpc2VkIEVFRSBsaW5rIG1vZGVzOsKgIDEwYmFzZVQvRnVsbArCoMKgIMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDEwMGJhc2VUL0hh
bGYKwqDCoCDCoExpbmsgcGFydG5lciBhZHZlcnRpc2VkIEVFRSBsaW5rIG1vZGVzOsKgIDEwMGJh
c2VUL0Z1bGwKwqDCoCDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDEwMDBiYXNlVC9GdWxsCgpU
aGUgZWVlLWJyb2tlbi0xMDB0eC9lZWUtYnJva2VuLTEwMDB0IG9wdGlvbnMgYXJlIG5vdCB5ZXQg
c2V0IGluIHRoZQpEVFMsIGJ1dCBJIGFtIG5vdCBzZWVpbmcgYW55IEVFRS1yZWxhdGVkIG1lc3Nh
Z2VzIG9uIHRoZSByb3V0ZXIgKG5vciBvbgpteSBjb21wdXRlcikgLS1vciBJJ20gbm90IGxvb2tp
bmcgYXQgdGhlIHJpZ2h0IHBsYWNlLS0uIElzIGl0IGp1c3QgYQptYXR0ZXIgb2YgdGltZSAoaS5l
LiwgdGhleSB3aWxsIGV2ZW50dWFsbHkgYXBwZWFyKT8gSW4gb3RoZXIgd29yZHMsCnNob3VsZCBJ
IGFkZCB0aGVtIHRvIHRoZSBEVFM/CgpSZWdhcmRzLAoKUm9nZXIKCkVsIDEvMi8yMCBhIGxlcyAx
OTowNywgTWFydGluIEJsdW1lbnN0aW5nbCBoYSBlc2NyaXQ6Cj4gSGkgQWRyaWFuLAo+Cj4gT24g
U2F0LCBGZWIgMSwgMjAyMCBhdCA2OjUwIFBNIDxtYWlsQGFkcmlhbnNjaG11dHpsZXIuZGU+IHdy
b3RlOgo+PiBIaSwKPj4KPj4gaW4gdGhlIGRldmljZSBzdXBwb3J0IFBSIGZvciBNaWtyb1RpayBS
b3V0ZXJCT0FSRCA5MjJVQUdTLTVIUGFjRCBbMV0gZm9yIGF0aDc5LCB3ZSBoYXZlIHRoZSBmb2xs
b3dpbmcgaW4gYXI3MXh4IG1hY2ggZmlsZXMgWzJdOgo+Pgo+PiBzdGF0aWMgc3RydWN0IGF0ODAz
eF9wbGF0Zm9ybV9kYXRhIHJiOTIyZ3NfYXQ4MDN4X2RhdGEgPSB7Cj4+ICAgICAgICAgLmRpc2Fi
bGVfc21hcnRlZWUgPSAxLAo+PiB9Owo+Pgo+PiBJcyB0aGVyZSBhbiBhdGg3OSBlcXVpdmFsZW50
IGF2YWlsYWJsZSBhbmQgbmVjZXNzYXJ5Pwo+IHVwc3RyZWFtIGhhcyB0aGUgZm9sbG93aW5nIHR3
byBwcm9wZXJ0aWVzICh3aGljaCBuZWVkIHRvIGJlIGFkZGVkCj4gaW5zaWRlIHRoZSBFdGhlcm5l
dCBQSFkgZGV2aWNldHJlZSBub2RlKToKPiAtIGVlZS1icm9rZW4tMTAwdHgKPiAtIGVlZS1icm9r
ZW4tMTAwMHQKPiAtICh0aGVyZSBhcmUgbW9yZSwgc2VlIERvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9uZXQvZXRoZXJuZXQtcGh5LnlhbWwpCj4KPiBzZXQgdGhlbSBhbmQgRUVFIHdp
bGwgbm90IGJlIGFkdmVydGlzZWQgYW55bW9yZS4KPgo+IHRoZXJlJ3Mgc29tZSBhZGRpdGlvbmFs
LCBBVDgwM1ggUEhZIHNwZWNpZmljIHJlZ2lzdGVyIHdyaXRlIGluc2lkZQo+IGF0ODAzeF9kaXNh
YmxlX3NtYXJ0ZWVlIGZyb20KPiB0YXJnZXQvbGludXgvZ2VuZXJpYy9wZW5kaW5nLTQuMTQvNzM0
LW5ldC1waHktYXQ4MDN4LWFsbG93LXRvLWNvbmZpZ3VyZS12aWEtcGRhdGEucGF0Y2gKPiBUaGlz
IG1vZGlmaWVzIHRoZSBBVDgwM1hfUENTX1NNQVJUX0VFRV9DVFJMMyByZWdpc3Rlci4gSSBkb24n
dCBrbm93Cj4gd2hldGhlciB0aGlzIGlzIG5lY2Vzc2FyeSB3aGVuIEVFRSBpcyBub3QgYWR2ZXJ0
aXNlZAo+Cj4KPiBNYXJ0aW4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0
cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8v
b3BlbndydC1kZXZlbAo=
