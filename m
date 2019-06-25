Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B33526FC
	for <lists+openwrt-devel@lfdr.de>; Tue, 25 Jun 2019 10:45:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=48ZMma242w/aruaxl/UjOcrF/+996/hgywDIFDhAhbg=; b=hS4XWr9+1SJpzr
	ptiBCGuK3yV5kUU+WknFAwBKILH1RrAcsZPKlOptLWk0Gn2XRpS4W1POOF9VBmHKf6lLBYLsn4oxk
	yFwWS3KSberNEQI2c4PbPOxyGq484ASdLl57tztvWODstVupSGX0+kXIE4iGKFqqOSLShT19ViRql
	dwjFFHHKBd2WVkPxX2/p54Y4LrtKLxPhcuiYlCM2SSnVXjAobJsFk14eHzCunEaoo7RypkRGBLlxg
	TLOBlQtSMPxk+Rlry7fkfylMAwZPTbi37/ifvkERldNKOkCsdnMZeP74ng9rx2PshS6GYvFKL5YFg
	R1poF9eNiZeDQO1pmEpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfh4t-0004iA-T0; Tue, 25 Jun 2019 08:45:23 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfh4i-0004hn-82
 for openwrt-devel@lists.openwrt.org; Tue, 25 Jun 2019 08:45:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dd-wrt.com;
 s=mikd; 
 h=Subject:Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To;
 bh=w9GoUUdZR+jc2A70fLg5KSgeDk2HBOabnKT6Fl+kpNE=; 
 b=NfP/OMxjwkU8ORuxy9MrErA1rUA+EEnHDQ9jpy8kq5eRp2xReQMq9bv6qBZh8hBk3aYqjX7ujiNXJvHJ8DBINyEQLFm2JN00mgc/lku/9A8eDkIqBCdWNLbYp4EPE0xfSDX/Y6pVdaJgf4iLwum5VP6m5lMp1JPsA0nfH1BcZsI=;
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <20190624161320.7316-1-daniel@dd-wrt.com>
 <3007342.El8puCmMqZ@debian64>
 <41cdb404-d377-92f3-22d7-5edb07d2d34e@dd-wrt.com>
 <20190625083910.GH95426@meh.true.cz>
From: Daniel Danzberger <daniel@dd-wrt.com>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel@dd-wrt.com; prefer-encrypt=mutual; keydata=
 mQENBFEb+wQBCAD7DgPNNCJeLdnVdMCcneGypnjJ8mtCmpjo/r7HO2Ig6im559z5IQwnGdmj
 FM+6Xws5oGBdhqh7V+uGJ0/pSVJ432OFd/2JYlEs9p9aLbth/QIaoMO4DfDS8EestMLuGYlj
 ffojt+lCwI/OVNvlsHPZczxUuLENDeCKPQKyVkSo8tf5qgOJxZmJ8ebSY2DiTD8Sr3TC7ge3
 aOMuE1YVMv8RbOEVvRcTBerCXteANRuJYA8H1Nwg1WOJjPl5SoysQqPamCkiyVFbteNtRZaV
 tBqfJNRUi4JXdZxsNoaWygJr5pAMyJ9FPMQ6meo/97Cj1E46fTH7QWDhYkwGS3sFLb1jABEB
 AAG0JURhbmllbCBEYW56YmVyZ2VyIDxkYW5pZWxAZGQtd3J0LmNvbT6JAT4EEwECACgFAlEc
 oikCGwMFCVexLAAGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAAoJEF2W1+mV7KsoZYwH/1HG
 YtcQuMVXOD1ClaDDoWumBZ089ABCeExcCjuNAqtySAD0Z1i3Dr153CDL5IF8WsLDL+hkhmRJ
 knQg31kwkFglm62HcYuVZiAEjoTgNZRfBezTQevWV6Dys8YdfJGdLifqtMQM5dBLuWtyRWK/
 gkcv0rf2iI9PLveCqb93K9qDLxzgV96kwTUabc6n4FIF324RUPlzCuGoDEUNkh/sVo8jkXl7
 v8vfxwKb1EEMlWLk7bRGqUg7mdHf9zM4Fnb9oMQLJUrFWtME2FlZLwKvMfW8/bPqHI3thIYV
 qgYvagC/1HKmlvHfo8rraKXsQKzNadlv4Vyh6iZYkdQXUTuQtDO5AQ0EURv7BAEIAL1UNRYJ
 q1hv3ggyZv9PSkaWy0t+xMoSwAd2hWdA3iuILrQXjtzJ3nTtePE9TrmLpjwmN8H/ppcNpf1W
 WZ1Zxer9e4cUmm1LjbbgNIArZqzplVh+7QwDJk0ER282k3p5s7IYLkjymwmgeuiSJgaRAmFm
 AJKjiaNZoGdZvaC8TGpgGCRidwDR/cUR1hjpA2vyidNSP5ynILqohEpIe2lvhClODSvEgcMN
 o4xOtmI+Yq2Qg2e7FUaP8pptEysDdDoUnSPxq9v0aQHe3FS90KzXGAaoCuEnnRaotzZcVI31
 vffWHoZ30yGETeTF+W52hIKe7D+MbFfyiRjNtOw6HKli7TEAEQEAAYkBJQQYAQIADwUCURv7
 BAIbDAUJV7EsAAAKCRBdltfpleyrKDikB/0SWPBPhPBpogDLF4bIwORt6Uu8UQus5jYudtMx
 j67v+R+f42sfBj+iKtz2GHlboul8tJXzcO6zVJf2gqQisCNAoS7wZ/k3axPtbgClQmsLtU7B
 KgVRYaWVlLol0hg/Sn1lju/yHhgmbdttfBmCE63wDWr1ITTFepp9aVwaoIhIRBmCBpf3Vk5I
 e6l+1iqDXNXVQVf5qPdVE0Im7IZb9kA7Wk7N6Fa+zYpK+Qz1wFOXYjmK9SPhjdf/5/V2EQGi
 JgaVyfwaMRPUDRFW2wBlScmP+82LqA6TvKKyi3O3zgnFqTGvY2+bvkr9dTfRBlx1NlX0am9t
 YMmhspz7064avRsg
Message-ID: <fd7c46ec-69bb-ff7e-f593-58c523825c7c@dd-wrt.com>
Date: Tue, 25 Jun 2019 10:45:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190625083910.GH95426@meh.true.cz>
Content-Language: en-US
X-SA-Exim-Connect-IP: 2a02:908:2614:35c:563:31a4:bd89:e4a6
X-SA-Exim-Mail-From: daniel@dd-wrt.com
X-Spam-Checker-Version: SpamAssassin 3.1.9 (2007-02-13) on
 webmail.newmedia-net.de
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=4.0 tests=BAYES_00,NO_RELAYS,
 RATWARE_GECKO_BUILD autolearn=no version=3.1.9, No
X-SA-Exim-Version: 4.2.1 (built Thu, 26 May 2011 15:22:33 +0200)
X-SA-Exim-Scanned: Yes (on webmail.newmedia-net.de)
X-NMN-MailScanner-Information: Please contact the ISP for more information
X-NMN-MailScanner-ID: 1hfh4m-0001Eq-EA
X-NMN-MailScanner: Found to be clean
X-NMN-MailScanner-SpamScore: s
X-NMN-MailScanner-From: daniel@dd-wrt.com
X-Received: from [2a02:908:2614:35c:563:31a4:bd89:e4a6]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <daniel@dd-wrt.com>)
 id 1hfh4m-0001Eq-EA; Tue, 25 Jun 2019 10:45:16 +0200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_014512_591023_4E5853B4 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: mt7621: Add new device AsiaRF
 AP7621-001
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
Cc: openwrt-devel@lists.openwrt.org, gch981213@gmail.com,
 Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SSBzZWUuIEkgd2lsbCBjaGFuZ2UgdGhlIG1vZGVsIHByb3BlcnR5IHRoZW4uLi4KCk9uIDYvMjUv
MTkgMTA6MzkgQU0sIFBldHIgxaB0ZXRpYXIgd3JvdGU6Cj4gRGFuaWVsIERhbnpiZXJnZXIgPGRh
bmllbEBkZC13cnQuY29tPiBbMjAxOS0wNi0yNSAxMDozNDo0N106Cj4gCj4+Pj4gKwltb2RlbCA9
ICJBUDc2MjEtMDAxIjsKPj4+Cj4+PiBPaCBib3ksIHRoaXMgaXMgdHJpY2t5Lgo+Pj4KPj4+IDxo
dHRwczovL2dpdGh1Yi5jb20vZGV2aWNldHJlZS1vcmcvZGV2aWNldHJlZS1zcGVjaWZpY2F0aW9u
L2Jsb2IvNGIxZGFjODBlYWNhNDViNGJhYmY1Mjk5NDUyYTk1MTAwOGE1ZDg2NC9zb3VyY2UvZGV2
aWNlbm9kZXMucnN0Pgo+Pj4gJ1RoZSByZWNvbW1lbmRlZCBmb3JtYXQgJyAoZm9yIHRoZSByb290
IG5vZGUhKSAnIGlzICJtYW51ZmFjdHVyZXIsbW9kZWwtbnVtYmVyIi4nCj4+Pgo+Pj4gQlVULiBU
aGluZyBpcywgdGhpcyBzdHJpbmcgaGVyZSBnZXRzIHByaW50ZWQgb24gdGhlIEx1Q0kgc3lzdGVt
Cj4+PiBwYWdlIGFuZCBmcm9tIHBhc3QgZXhwZXJpZW5jZSAiTWFudWdhY3R1cmVyIE1vZGVsIiB3
b3JrcyBiZXN0Lgo+Pj4KPj4gSSBhbSBub3Qgc3VyZSBpZiB1c2luZyBhIGJsYW5rIGluc3RlYWQg
b2YgJywnIGlzIGEgZ29vZCBpZGVhLCBiZWNhdXNlIG9mCj4+IHN5c3VwZ3JhZGUgYW5kIHRoZSBk
ZXZpY2UgdHJlZSBib2FyZCBkZXRlY3Rpb24uCj4+IEFsbCBvdGhlciBEVFMgZmlsZXMgdXNlICcs
JyBpbiBEVFMgYW5kICdfJyBpbiB0aGVpciBNYWtlZmlsZS4KPj4KPj4gQXJlIHlvdSBzdXJlIGFi
b3V0IHRoaXMgb25lID8KPiAKPiBZZXMsIENocmlzdGlhbiBpcyB0YWxraW5nIGFib3V0IG1vZGVs
IHByb3BlcnR5LCBub3QgdGhlIGNvbXBhdGlibGUgcHJvcGVydHkuCj4gCj4gIG1vZGVsID0gIkFz
aWFSRiBBUDc2MjEtMDAxIjsKPiAKPiAtLSB5bmV6ego+IAoKLS0gClJlZ2FyZHMKCkRhbmllbCBE
YW56YmVyZ2VyCmVtYmVERCBHbWJILCBBbHRlciBQb3N0cGxhdHogMiwgQ0gtNjM3MCBTdGFucwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1k
ZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczov
L2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
