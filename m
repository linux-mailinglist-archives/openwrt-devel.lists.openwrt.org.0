Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68623168E00
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Feb 2020 10:10:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZxWH8zjSyGFH4Cf0AjLUY5Q5rHTO1JNFptdJZRfbSeI=; b=g3p2gMreyO1Bvb
	5lRdEEmVyQ+uqunHKps+KTlLI5tTdC5jjfETlSv5Knk6IPEkQv7ufZnCe2NILqKKO/7zdVMVifRu/
	EAtG8NAC20b47aPH6GRjFebNNGBXBg5aooR/f06/y++eLzYPIYHbTnMXmkfunzlLw/bPom7e6v+Pq
	kJlfz+8E4IRmbLcC96ojNxjd66BG2fP/oxyXfEBikHpOpDJURRURXFr7p5wtyv2ajbIP19V/m57Ap
	QoKhVnMn7TQaNkOE3zJh6WPxHBeKWZ0qMMI/BvxrPwcU+/QWHe4gf1e+BSTAkmYwJmf2z9XCYp91p
	BZwWw+GR32DsAec3kkXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5Qnj-0003N6-PV; Sat, 22 Feb 2020 09:10:19 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5Qnd-0002pd-6S
 for openwrt-devel@lists.openwrt.org; Sat, 22 Feb 2020 09:10:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=nbd.name;
 s=20160729; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CondOE1XjppYZh93JMxHIxuYFurC7+3GuSuwvAJF9Ow=; b=kREOjYXz93TVwjosYOyYX4M/S0
 zqIa7V5w/pShOQ49Bs/FbDaDo/gZlxlyfKhVszsM+4em4eAJAV+GQGa1oZciOqNXbcpC91BF2I5L4
 oVqQmuklGHqmKHgkpySsPvV6fYR6/kt5t/ZNp6Qlpv+0fICK1uckwgzMIG06uT9Z32Xc=;
Received: from p4ff13b25.dip0.t-ipconnect.de ([79.241.59.37] helo=nf.local)
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <nbd@nbd.name>)
 id 1j5QnV-0000GT-DN; Sat, 22 Feb 2020 10:10:05 +0100
To: Stijn Tintel <stijn@linux-ipv6.be>, =?UTF-8?Q?Petr_=c5=a0tetiar?=
 <ynezz@true.cz>, openwrt-devel@lists.openwrt.org
References: <20200220095626.24906-1-ynezz@true.cz>
 <ae942e67-f207-0f41-b551-90df926c55ef@linux-ipv6.be>
From: Felix Fietkau <nbd@nbd.name>
Autocrypt: addr=nbd@nbd.name; prefer-encrypt=mutual; keydata=
 xsDiBEah5CcRBADIY7pu4LIv3jBlyQ/2u87iIZGe6f0f8pyB4UjzfJNXhJb8JylYYRzIOSxh
 ExKsdLCnJqsG1PY1mqTtoG8sONpwsHr2oJ4itjcGHfn5NJSUGTbtbbxLro13tHkGFCoCr4Z5
 Pv+XRgiANSpYlIigiMbOkide6wbggQK32tC20QxUIwCg4k6dtV/4kwEeiOUfErq00TVqIiEE
 AKcUi4taOuh/PQWx/Ujjl/P1LfJXqLKRPa8PwD4j2yjoc9l+7LptSxJThL9KSu6gtXQjcoR2
 vCK0OeYJhgO4kYMI78h1TSaxmtImEAnjFPYJYVsxrhay92jisYc7z5R/76AaELfF6RCjjGeP
 wdalulG+erWju710Bif7E1yjYVWeA/9Wd1lsOmx6uwwYgNqoFtcAunDaMKi9xVQW18FsUusM
 TdRvTZLBpoUAy+MajAL+R73TwLq3LnKpIcCwftyQXK5pEDKq57OhxJVv1Q8XkA9Dn1SBOjNB
 l25vJDFAT9ntp9THeDD2fv15yk4EKpWhu4H00/YX8KkhFsrtUs69+vZQwc0cRmVsaXggRmll
 dGthdSA8bmJkQG5iZC5uYW1lPsJgBBMRAgAgBQJGoeQnAhsjBgsJCAcDAgQVAggDBBYCAwEC
 HgECF4AACgkQ130UHQKnbvXsvgCgjsAIIOsY7xZ8VcSm7NABpi91yTMAniMMmH7FRenEAYMa
 VrwYTIThkTlQzsFNBEah5FQQCACMIep/hTzgPZ9HbCTKm9xN4bZX0JjrqjFem1Nxf3MBM5vN
 CYGBn8F4sGIzPmLhl4xFeq3k5irVg/YvxSDbQN6NJv8o+tP6zsMeWX2JjtV0P4aDIN1pK2/w
 VxcicArw0VYdv2ZCarccFBgH2a6GjswqlCqVM3gNIMI8ikzenKcso8YErGGiKYeMEZLwHaxE
 Y7mTPuOTrWL8uWWRL5mVjhZEVvDez6em/OYvzBwbkhImrryF29e3Po2cfY2n7EKjjr3/141K
 DHBBdgXlPNfDwROnA5ugjjEBjwkwBQqPpDA7AYPvpHh5vLbZnVGu5CwG7NAsrb2isRmjYoqk
 wu++3117AAMFB/9S0Sj7qFFQcD4laADVsabTpNNpaV4wAgVTRHKV/kC9luItzwDnUcsZUPdQ
 f3MueRJ3jIHU0UmRBG3uQftqbZJj3ikhnfvyLmkCNe+/hXhPu9sGvXyi2D4vszICvc1KL4RD
 aLSrOsROx22eZ26KqcW4ny7+va2FnvjsZgI8h4sDmaLzKczVRIiLITiMpLFEU/VoSv0m1F4B
 FtRgoiyjFzigWG0MsTdAN6FJzGh4mWWGIlE7o5JraNhnTd+yTUIPtw3ym6l8P+gbvfoZida0
 TspgwBWLnXQvP5EDvlZnNaKa/3oBes6z0QdaSOwZCRA3QSLHBwtgUsrT6RxRSweLrcabwkkE
 GBECAAkFAkah5FQCGwwACgkQ130UHQKnbvW2GgCfTKx80VvCR/PvsUlrvdOLsIgeRGAAn1ee
 RjMaxwtSdaCKMw3j33ZbsWS4
Message-ID: <fc8fc1a0-0ee9-3727-9344-faf36bcb8920@nbd.name>
Date: Sat, 22 Feb 2020 10:10:04 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <ae942e67-f207-0f41-b551-90df926c55ef@linux-ipv6.be>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_011013_439548_736AAB79 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ppp: activate PIE ASLR by default
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

T24gMjAyMC0wMi0yMiAwOTo1NCwgU3Rpam4gVGludGVsIHdyb3RlOgo+IE9uIDIwLzAyLzIwMjAg
MTE6NTYsIFBldHIgxaB0ZXRpYXIgd3JvdGU6Cj4+IFRoaXMgYWN0aXZhdGVzIFBJRSBBU0xSIHN1
cHBvcnQgYnkgZGVmYXVsdCB3aGVuIHRoZSByZWd1bGFyIG9wdGlvbiBpcwo+PiBzZWxlY3RlZC4K
Pj4KPiBVbmZvcnR1bmF0ZWx5IHRoaXMgc2VlbXMgdG8gYnJlYWsgYnVpbGQgb24geDg2LzY0Ogo+
IAo+IHg4Nl82NC1vcGVud3J0LWxpbnV4LW11c2wtZ2NjIC1PMiAtcGlwZSAtZm5vLWNhbGxlci1z
YXZlcyAtZm5vLXBsdAo+IC1maG9ub3VyLWNvcHRzIC1Xbm8tZXJyb3I9dW51c2VkLWJ1dC1zZXQt
dmFyaWFibGUKPiAtV25vLWVycm9yPXVudXNlZC1yZXN1bHQKPiAtZmZpbGUtcHJlZml4LW1hcD0v
aG9tZS9zdGlqbi9EZXZlbG9wbWVudC9MRURFL3NvdXJjZS9idWlsZF9kaXIvdGFyZ2V0LXg4Nl82
NF9tdXNsL2xpbnV4LXg4Nl82NC9wcHAtZGVmYXVsdC9wcHAtMi40Ljg9cHBwLTIuNC44Cj4gLVdm
b3JtYXQgLVdlcnJvcj1mb3JtYXQtc2VjdXJpdHkgLWZwaWMgLWZzdGFjay1wcm90ZWN0b3Itc3Ry
b25nCj4gLURfRk9SVElGWV9TT1VSQ0U9MiAtV2wsLXosbm93IC1XbCwteixyZWxybyAtZmZ1bmN0
aW9uLXNlY3Rpb25zCj4gLWZkYXRhLXNlY3Rpb25zIC1mbHRvIC1ESEFWRV9QQVRIU19IIC1ESEFW
RV9NTUFQIC1JLi4vaW5jbHVkZQo+ICctRERFU1RESVI9Ii91c3IiJyAtRENIQVBNUz0xIC1ETVBQ
RT0xIC1ESEFTX1NIQURPVyAtREhBVkVfQ1JZUFRfSD0xCj4gLURVU0VfQ1JZUFQ9MSAtRFBMVUdJ
TiAtRFBQUF9GSUxURVIgLURQUFBfUFJFQ09NUElMRURfRklMVEVSCj4gLUkvaG9tZS9zdGlqbi9E
ZXZlbG9wbWVudC9MRURFL3NvdXJjZS9zdGFnaW5nX2Rpci90YXJnZXQteDg2XzY0X211c2wvdXNy
L2luY2x1ZGUKPiAtRElORVQ2PTEgLURNQVhPQ1RFVFMKPiAtTC9ob21lL3N0aWpuL0RldmVsb3Bt
ZW50L0xFREUvc291cmNlL3N0YWdpbmdfZGlyL3RhcmdldC14ODZfNjRfbXVzbC91c3IvbGliCj4g
LUwvaG9tZS9zdGlqbi9EZXZlbG9wbWVudC9MRURFL3NvdXJjZS9zdGFnaW5nX2Rpci90YXJnZXQt
eDg2XzY0X211c2wvbGliCj4gLUwvaG9tZS9zdGlqbi9EZXZlbG9wbWVudC9MRURFL3NvdXJjZS9z
dGFnaW5nX2Rpci90b29sY2hhaW4teDg2XzY0X2djYy04LjMuMF9tdXNsL3Vzci9saWIKPiAtTC9o
b21lL3N0aWpuL0RldmVsb3BtZW50L0xFREUvc291cmNlL3N0YWdpbmdfZGlyL3Rvb2xjaGFpbi14
ODZfNjRfZ2NjLTguMy4wX211c2wvbGliCj4gLWZwaWMKPiAtc3BlY3M9L2hvbWUvc3Rpam4vRGV2
ZWxvcG1lbnQvTEVERS9zb3VyY2UvaW5jbHVkZS9oYXJkZW5lZC1sZC1waWUuc3BlY3MKPiAtem5v
dyAtenJlbHJvIC1XbCwtLWdjLXNlY3Rpb25zIC1mbHRvIC1mdXNlLWxpbmtlci1wbHVnaW7CoCAt
V2wsLUUgLW8KPiBwcHBkIG1haW4ubyBtYWdpYy5vIGZzbS5vIGxjcC5vIGlwY3AubyB1cGFwLm8g
Y2hhcC1uZXcubyBtZDUubyBjY3Aubwo+IGVjcC5vIGF1dGgubyBvcHRpb25zLm8gZGVtYW5kLm8g
dXRpbHMubyBzeXMtbGludXgubyBpcHhjcC5vIHR0eS5vIGVhcC5vCj4gY2hhcC1tZDUubyBzZXNz
aW9uLm8gbWQ0Lm8gY2hhcF9tcy5vIHNoYTEubyBwcHBjcnlwdC5vIHBjYXBfcGNjLm8KPiBpcHY2
Y3AubyBldWk2NC5vwqAgLWxjcnlwdCAtbGRsCj4gL2hvbWUvc3Rpam4vRGV2ZWxvcG1lbnQvTEVE
RS9zb3VyY2Uvc3RhZ2luZ19kaXIvdGFyZ2V0LXg4Nl82NF9tdXNsL3Vzci9saWIvbGlicGNhcC5h
Cj4gL2hvbWUvYnVpbGQvb3BlbndydC9zdGFnaW5nX2Rpci90b29sY2hhaW4teDg2XzY0X2djYy04
LjMuMF9tdXNsL2Jpbi8uLi9saWIvZ2NjL3g4Nl82NC1vcGVud3J0LWxpbnV4LW11c2wvOC4zLjAv
Li4vLi4vLi4vLi4veDg2XzY0LW9wZW53cnQtbGludXgtbXVzbC9iaW4vbGQ6Cj4gL2hvbWUvc3Rp
am4vRGV2ZWxvcG1lbnQvTEVERS9zb3VyY2Uvc3RhZ2luZ19kaXIvdGFyZ2V0LXg4Nl82NF9tdXNs
L3Vzci9saWIvbGlicGNhcC5hKGJwZl9maWx0ZXIuYy5vKToKPiByZWxvY2F0aW9uIFJfWDg2XzY0
XzMyUyBhZ2FpbnN0IGAucm9kYXRhJyBjYW4gbm90IGJlIHVzZWQgd2hlbiBtYWtpbmcgYQo+IFBJ
RSBvYmplY3Q7IHJlY29tcGlsZSB3aXRoIC1mUElDCj4gL2hvbWUvYnVpbGQvb3BlbndydC9zdGFn
aW5nX2Rpci90b29sY2hhaW4teDg2XzY0X2djYy04LjMuMF9tdXNsL2Jpbi8uLi9saWIvZ2NjL3g4
Nl82NC1vcGVud3J0LWxpbnV4LW11c2wvOC4zLjAvLi4vLi4vLi4vLi4veDg2XzY0LW9wZW53cnQt
bGludXgtbXVzbC9iaW4vbGQ6Cj4gZmluYWwgbGluayBmYWlsZWQ6IG5vbnJlcHJlc2VudGFibGUg
c2VjdGlvbiBvbiBvdXRwdXQKPiBjb2xsZWN0MjogZXJyb3I6IGxkIHJldHVybmVkIDEgZXhpdCBz
dGF0dXMKPiAKPiBTbyBOQUNLIGZyb20gbWUgdW50aWwgdGhpcyBpcyBmaXhlZC4KVGhpcyBvbmUg
Y2FuIG1vc3QgbGlrZWx5IGJlIGZpeGVkIGJ5IHNldHRpbmcgUEtHX0FTTFJfUElFX1JFR1VMQVI6
PTEgaW4KbGlicGNhcCBhcyB3ZWxsLiBUaGF0IHdheSAtZlBJQyBnZXRzIHBhc3NlZCBmb3IgdGhl
IHN0YXRpYyBsaWJyYXJ5IGJ1aWxkLgoKLSBGZWxpeAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Blbndy
dC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxt
YW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
