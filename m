Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12081168E90
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Feb 2020 12:43:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vXF45SHaCHj0pbtAceBHBnUffCT0WcudaRoqbMfc/iU=; b=bF+qgunTCW+TBh
	n2drdA0va3Xk7QCe4ERcc+gm2TNLclJzUQb/8+ZX0qcKNfzuvu4iR5UHrtWK6c2b3VikgcDYvTRRr
	/1OefnvnsuQAZirrD8z6Si5C2MX/6Sh8KtB/Oa/vi0z7iaMrjP5W4qf7fI9f3rQdnFTbfBIpNlHZk
	Np0OjY18uf+NR3r3SRGsV3GBLG8JgGpBVz7nYk2h/a2Xodruu3Bj4mD0PJ8sKl0kUGbk/xULcdmyf
	1NOSoQyiKmS5h4wsOK/AAK1jgLhHNBR2K6XMTkwoexB0qu+Ej7HwjJNeY0eXaRd35/BmSxNv3tIQI
	whnFkvJC6KG7FaMscYfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5TCH-0007Ng-E8; Sat, 22 Feb 2020 11:43:49 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5TC8-0007N1-2c
 for openwrt-devel@lists.openwrt.org; Sat, 22 Feb 2020 11:43:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=nbd.name;
 s=20160729; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lumgteIV8c5OGVYyYx5mzp1eJgfrvCEK0JxyezjucrA=; b=CpGuCJgChis13PSnA3SEj12j/s
 cd2yvA/duoYRU6NaUU5MvJFDSRdA+qkxeOt5v10rLipvt/H3MQ0xIq2DzkYD9UYVlDZ228I/vsDy/
 WnCw8htQG4u/fQkEGUMi7Cx3PKuWDv4AiPh6yMvfl+lD8s9G0ZVSLxcmozRPFztXweak=;
Received: from p4ff13b25.dip0.t-ipconnect.de ([79.241.59.37] helo=nf.local)
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <nbd@nbd.name>)
 id 1j5TC3-00089L-JD; Sat, 22 Feb 2020 12:43:35 +0100
To: Stijn Tintel <stijn@linux-ipv6.be>, =?UTF-8?Q?Petr_=c5=a0tetiar?=
 <ynezz@true.cz>, openwrt-devel@lists.openwrt.org
References: <20200220095626.24906-1-ynezz@true.cz>
 <ae942e67-f207-0f41-b551-90df926c55ef@linux-ipv6.be>
 <fc8fc1a0-0ee9-3727-9344-faf36bcb8920@nbd.name>
 <2904e2f4-0df3-2533-436a-aa1169e9093f@linux-ipv6.be>
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
Message-ID: <03b6a0cd-9541-6bec-c95a-f9973039bc95@nbd.name>
Date: Sat, 22 Feb 2020 12:43:35 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <2904e2f4-0df3-2533-436a-aa1169e9093f@linux-ipv6.be>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_034340_378132_AE0F069F 
X-CRM114-Status: GOOD (  11.50  )
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

T24gMjAyMC0wMi0yMiAxMDoyMiwgU3Rpam4gVGludGVsIHdyb3RlOgo+IE9uIDIyLzAyLzIwMjAg
MTE6MTAsIEZlbGl4IEZpZXRrYXUgd3JvdGU6Cj4+IE9uIDIwMjAtMDItMjIgMDk6NTQsIFN0aWpu
IFRpbnRlbCB3cm90ZToKPj4+IE9uIDIwLzAyLzIwMjAgMTE6NTYsIFBldHIgxaB0ZXRpYXIgd3Jv
dGU6Cj4+Pj4gVGhpcyBhY3RpdmF0ZXMgUElFIEFTTFIgc3VwcG9ydCBieSBkZWZhdWx0IHdoZW4g
dGhlIHJlZ3VsYXIgb3B0aW9uIGlzCj4+Pj4gc2VsZWN0ZWQuCj4+Pj4KPj4+IFVuZm9ydHVuYXRl
bHkgdGhpcyBzZWVtcyB0byBicmVhayBidWlsZCBvbiB4ODYvNjQ6Cj4+Pgo+Pj4geDg2XzY0LW9w
ZW53cnQtbGludXgtbXVzbC1nY2MgLU8yIC1waXBlIC1mbm8tY2FsbGVyLXNhdmVzIC1mbm8tcGx0
Cj4+PiAtZmhvbm91ci1jb3B0cyAtV25vLWVycm9yPXVudXNlZC1idXQtc2V0LXZhcmlhYmxlCj4+
PiAtV25vLWVycm9yPXVudXNlZC1yZXN1bHQKPj4+IC1mZmlsZS1wcmVmaXgtbWFwPS9ob21lL3N0
aWpuL0RldmVsb3BtZW50L0xFREUvc291cmNlL2J1aWxkX2Rpci90YXJnZXQteDg2XzY0X211c2wv
bGludXgteDg2XzY0L3BwcC1kZWZhdWx0L3BwcC0yLjQuOD1wcHAtMi40LjgKPj4+IC1XZm9ybWF0
IC1XZXJyb3I9Zm9ybWF0LXNlY3VyaXR5IC1mcGljIC1mc3RhY2stcHJvdGVjdG9yLXN0cm9uZwo+
Pj4gLURfRk9SVElGWV9TT1VSQ0U9MiAtV2wsLXosbm93IC1XbCwteixyZWxybyAtZmZ1bmN0aW9u
LXNlY3Rpb25zCj4+PiAtZmRhdGEtc2VjdGlvbnMgLWZsdG8gLURIQVZFX1BBVEhTX0ggLURIQVZF
X01NQVAgLUkuLi9pbmNsdWRlCj4+PiAnLURERVNURElSPSIvdXNyIicgLURDSEFQTVM9MSAtRE1Q
UEU9MSAtREhBU19TSEFET1cgLURIQVZFX0NSWVBUX0g9MQo+Pj4gLURVU0VfQ1JZUFQ9MSAtRFBM
VUdJTiAtRFBQUF9GSUxURVIgLURQUFBfUFJFQ09NUElMRURfRklMVEVSCj4+PiAtSS9ob21lL3N0
aWpuL0RldmVsb3BtZW50L0xFREUvc291cmNlL3N0YWdpbmdfZGlyL3RhcmdldC14ODZfNjRfbXVz
bC91c3IvaW5jbHVkZQo+Pj4gLURJTkVUNj0xIC1ETUFYT0NURVRTCj4+PiAtTC9ob21lL3N0aWpu
L0RldmVsb3BtZW50L0xFREUvc291cmNlL3N0YWdpbmdfZGlyL3RhcmdldC14ODZfNjRfbXVzbC91
c3IvbGliCj4+PiAtTC9ob21lL3N0aWpuL0RldmVsb3BtZW50L0xFREUvc291cmNlL3N0YWdpbmdf
ZGlyL3RhcmdldC14ODZfNjRfbXVzbC9saWIKPj4+IC1ML2hvbWUvc3Rpam4vRGV2ZWxvcG1lbnQv
TEVERS9zb3VyY2Uvc3RhZ2luZ19kaXIvdG9vbGNoYWluLXg4Nl82NF9nY2MtOC4zLjBfbXVzbC91
c3IvbGliCj4+PiAtTC9ob21lL3N0aWpuL0RldmVsb3BtZW50L0xFREUvc291cmNlL3N0YWdpbmdf
ZGlyL3Rvb2xjaGFpbi14ODZfNjRfZ2NjLTguMy4wX211c2wvbGliCj4+PiAtZnBpYwo+Pj4gLXNw
ZWNzPS9ob21lL3N0aWpuL0RldmVsb3BtZW50L0xFREUvc291cmNlL2luY2x1ZGUvaGFyZGVuZWQt
bGQtcGllLnNwZWNzCj4+PiAtem5vdyAtenJlbHJvIC1XbCwtLWdjLXNlY3Rpb25zIC1mbHRvIC1m
dXNlLWxpbmtlci1wbHVnaW7CoCAtV2wsLUUgLW8KPj4+IHBwcGQgbWFpbi5vIG1hZ2ljLm8gZnNt
Lm8gbGNwLm8gaXBjcC5vIHVwYXAubyBjaGFwLW5ldy5vIG1kNS5vIGNjcC5vCj4+PiBlY3AubyBh
dXRoLm8gb3B0aW9ucy5vIGRlbWFuZC5vIHV0aWxzLm8gc3lzLWxpbnV4Lm8gaXB4Y3AubyB0dHku
byBlYXAubwo+Pj4gY2hhcC1tZDUubyBzZXNzaW9uLm8gbWQ0Lm8gY2hhcF9tcy5vIHNoYTEubyBw
cHBjcnlwdC5vIHBjYXBfcGNjLm8KPj4+IGlwdjZjcC5vIGV1aTY0Lm/CoCAtbGNyeXB0IC1sZGwK
Pj4+IC9ob21lL3N0aWpuL0RldmVsb3BtZW50L0xFREUvc291cmNlL3N0YWdpbmdfZGlyL3Rhcmdl
dC14ODZfNjRfbXVzbC91c3IvbGliL2xpYnBjYXAuYQo+Pj4gL2hvbWUvYnVpbGQvb3BlbndydC9z
dGFnaW5nX2Rpci90b29sY2hhaW4teDg2XzY0X2djYy04LjMuMF9tdXNsL2Jpbi8uLi9saWIvZ2Nj
L3g4Nl82NC1vcGVud3J0LWxpbnV4LW11c2wvOC4zLjAvLi4vLi4vLi4vLi4veDg2XzY0LW9wZW53
cnQtbGludXgtbXVzbC9iaW4vbGQ6Cj4+PiAvaG9tZS9zdGlqbi9EZXZlbG9wbWVudC9MRURFL3Nv
dXJjZS9zdGFnaW5nX2Rpci90YXJnZXQteDg2XzY0X211c2wvdXNyL2xpYi9saWJwY2FwLmEoYnBm
X2ZpbHRlci5jLm8pOgo+Pj4gcmVsb2NhdGlvbiBSX1g4Nl82NF8zMlMgYWdhaW5zdCBgLnJvZGF0
YScgY2FuIG5vdCBiZSB1c2VkIHdoZW4gbWFraW5nIGEKPj4+IFBJRSBvYmplY3Q7IHJlY29tcGls
ZSB3aXRoIC1mUElDCj4+PiAvaG9tZS9idWlsZC9vcGVud3J0L3N0YWdpbmdfZGlyL3Rvb2xjaGFp
bi14ODZfNjRfZ2NjLTguMy4wX211c2wvYmluLy4uL2xpYi9nY2MveDg2XzY0LW9wZW53cnQtbGlu
dXgtbXVzbC84LjMuMC8uLi8uLi8uLi8uLi94ODZfNjQtb3BlbndydC1saW51eC1tdXNsL2Jpbi9s
ZDoKPj4+IGZpbmFsIGxpbmsgZmFpbGVkOiBub25yZXByZXNlbnRhYmxlIHNlY3Rpb24gb24gb3V0
cHV0Cj4+PiBjb2xsZWN0MjogZXJyb3I6IGxkIHJldHVybmVkIDEgZXhpdCBzdGF0dXMKPj4+Cj4+
PiBTbyBOQUNLIGZyb20gbWUgdW50aWwgdGhpcyBpcyBmaXhlZC4KPj4gVGhpcyBvbmUgY2FuIG1v
c3QgbGlrZWx5IGJlIGZpeGVkIGJ5IHNldHRpbmcgUEtHX0FTTFJfUElFX1JFR1VMQVI6PTEgaW4K
Pj4gbGlicGNhcCBhcyB3ZWxsLiBUaGF0IHdheSAtZlBJQyBnZXRzIHBhc3NlZCBmb3IgdGhlIHN0
YXRpYyBsaWJyYXJ5IGJ1aWxkLgo+Pgo+IEludGVyZXN0aW5nLiBJJ3ZlIGFkZGVkIHRoaXMgaW4g
dGhlIGxpYnBjYXAgTWFrZWZpbGUgYW5kIHRoYXQgc2VlbXMgdG8KPiBmaXggaXQuIEJ1dCBJIGFt
IGFjdHVhbGx5IGJ1aWxkaW5nIHdpdGggQ09ORklHX1BLR19BU0xSX1BJRV9BTEw9eSwgc28KPiB3
b3VsZCBhc3N1bWUgaXQgd291bGQgZW5hYmxlIFBJRSBldmVuIGlmIFBLR19BU0xSX1BJRV9SRUdV
TEFSIGlzIG5vdCBzZXQKPiBpbiB0aGUgTWFrZWZpbGUuIEFueXdheSwgSSdsbCBzZW5kIGEgcGF0
Y2ggZm9yIGxpYnBjYXAsIHRoYW5rcyBmb3IgdGhlCj4gc3VnZ2VzdGlvbi4KTWF5YmUgaXQgd2Fz
IGJ1aWx0IGJlZm9yZSB5b3UgbWFkZSB0aGF0IGNvbmZpZyBjaGFuZ2U/IEl0IHNlZW1zIHRvIG1l
CnRoYXQgdGhlIEFMU1JfUElFIHN0dWZmIGlzIG1pc3Npbmcgc29tZSBQS0dfQ09ORklHX0RFUEVO
RFMgaGFuZGxpbmcuCgotIEZlbGl4CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxp
c3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5m
by9vcGVud3J0LWRldmVsCg==
