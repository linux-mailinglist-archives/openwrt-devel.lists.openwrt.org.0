Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96CC0B2D28
	for <lists+openwrt-devel@lfdr.de>; Sat, 14 Sep 2019 23:38:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n6d8VoInCrgFGquP75uAz6Z8p5+WbzRl922i0igIUPo=; b=inRv6QSEYF1KfE
	wChgkx2omlHfqkgwffBmfOUkooyOXGSuAjK6N6hB+5jOeLH2BNLecIwOdZml8ddNhTLMLTK9Y/bPh
	AIfNS6mNpd6txiJ5uHHeBeU3rlZWoxv6cvzzpCmGrGrT/rylQhMsbAVAJZ+HBrxLSrREoP4hvk7kB
	18ndHiSaAreZix8FAb/9o2RnvWWgr0cVmX4xWMMmHcNJyTuPddq7nWnDXDK4kdNlbUCOqfAF1XlST
	u6EEq06927J/drbJ4CUZ3HHBRKVd8tF+Ltvbiso1ylsr7PKOY+tOuRPL0oVjL99dZ55rFUX5ojUOc
	ukNPGRSGg6/hGY76NpAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9FkQ-0000IP-RN; Sat, 14 Sep 2019 21:38:26 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9Fk6-0000Hw-Be
 for openwrt-devel@lists.openwrt.org; Sat, 14 Sep 2019 21:38:07 +0000
Received: by mail-ot1-x344.google.com with SMTP id b2so32469153otq.10
 for <openwrt-devel@lists.openwrt.org>; Sat, 14 Sep 2019 14:38:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=6E+C+zjphH6gB0coa8TbcT/haPAARN5os7zcZ/7kzdo=;
 b=JG96iITLQeH6Fiw0XD4uVj9RVbY2WPN0lW102aS4PxP+EvU4EjZUWDUr/w63rP+Xz/
 WOmjXPqvWvgzp9xkH2oygTv90C3RDx85wBeFahvwztRb5FpLOOGWt8NjXQSKYfQBQ6nj
 XFpqNc8JSLnVBMvSK4djriQnyvR6+ayxYeTg4I14ZIBoSVFZUT3txy7cE3sY5wNYdMUs
 g6k/EnarmLhp5gaZfeLIj52FsGWzXokXBuvOKmvUnv4EnEsg9ktgsvwII6xqGD8bWphB
 XZt7bguxYKWPhRm2cAIlCGRze0CnkJGzEldu5rW6XqWd78nVCu6SgAcPnDeAgnTwQ/Ik
 xGkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=6E+C+zjphH6gB0coa8TbcT/haPAARN5os7zcZ/7kzdo=;
 b=ER7zHnd3rxadBWCCWX7vXCNpCmXFyCkpLMt6b06U92LE4TncJkCj4V49/8QEersFOA
 EdWATufMJoU21hakwDRzdwYdEa6tWWkl28G7/lKQxY1uaBV8pYJV9PwFLXA5wn9QNscm
 IQC0WXoz0UxnApNzXDT2vYunkGK6o8LoHuGcuVMdXtg2zSPE2MyuTQLajPqBUttcrO66
 PHPElGzrrTVB2Hi8d9JBY8C2UPQbrGlekfnlimQpwZHufJdtVEIVgAAPMpDc2si9I2Gf
 IMSKwihItDRR4AeUIe+n4BEK4vVai0xlErRRFWuWcvWH12EV3LGQjDfZZKYL6k9GSz3V
 JAdQ==
X-Gm-Message-State: APjAAAVRaFNIVfx0LJlU0x2Oeaf4cPngCjNLwdfp4Dk+1fyp7hJPZ5YN
 K6FwZIySRtBo+DL2mI8XqN6a2U/eXAOyMDuiwjc=
X-Google-Smtp-Source: APXvYqyAp8mnlPAC8MJn0n1StbkUjJaSAcQAg/zSbrkCKrYp97z2GnZxp1Uda7SR2XHMGbl2TCLWdFTSGyFW6QPiCrY=
X-Received: by 2002:a9d:37c7:: with SMTP id x65mr43211827otb.47.1568497081643; 
 Sat, 14 Sep 2019 14:38:01 -0700 (PDT)
MIME-Version: 1.0
References: <CA+_ehUwcjhz=qtrT-S-YUgwspc08=22xHDEX2eXe2wH6uVXM8A@mail.gmail.com>
 <20190727225308.GD74752@meh.true.cz>
 <06952a91-cb03-3818-33ef-449ccad8a95e@allycomm.com>
In-Reply-To: <06952a91-cb03-3818-33ef-449ccad8a95e@allycomm.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Sat, 14 Sep 2019 14:37:50 -0700
Message-ID: <CAKxU2N9DJrBMn_FMnU2F566XyTya2szBvThVFRBO86D60nQsuQ@mail.gmail.com>
To: Jeff Kletsky <lede@allycomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_143806_400680_5336DB97 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] Compilation error switch to pyhon 3
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
Cc: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gU2F0LCBKdWwgMjcsIDIwMTkgYXQgNDoxMiBQTSBKZWZmIEtsZXRza3kgPGxlZGVAYWxseWNv
bW0uY29tPiB3cm90ZToKPgo+Cj4gT24gNy8yNy8xOSAzOjUzIFBNLCBQZXRyIMWgdGV0aWFyIHdy
b3RlOgo+ID4gQW5zdWVsIFNtaXRoIDxhbnN1ZWxzbXRoQGdtYWlsLmNvbT4gWzIwMTktMDctMjcg
MTk6NDY6MzVdOgo+ID4KPiA+IEhpLAo+ID4KPiA+PiBJIGNhbid0IGN1cnJlbnRseSBjb21waWxl
IG15IGltYWdlIGFuZCBpIGhhdmUgdGhpcyBlcnJvcgo+ID4+Cj4gPj4gbWFrZVszXTogTGVhdmlu
ZyBkaXJlY3RvcnkgJy9ob21lL2Fuc3VlbC9vcGVud3J0L3Rvb2xzL2xpYnRvb2wnCj4gPj4gdGlt
ZTogdG9vbHMvbGlidG9vbC9jb21waWxlIzAuMDUjMC4wMCMwLjEwCj4gPj4gVHJhY2ViYWNrICht
b3N0IHJlY2VudCBjYWxsIGxhc3QpOgo+ID4+ICAgIEZpbGUgIi9ob21lL2Fuc3VlbC9vcGVud3J0
L2J1aWxkX2Rpci9ob3N0L3Njb25zLTMuMC41L3NldHVwLnB5IiwKPiA+PiBsaW5lIDI2LCBpbiA8
bW9kdWxlPgo+ID4+ICAgICAgaW1wb3J0IGRpc3R1dGlscy5jb21tYW5kLmJ1aWxkX3NjcmlwdHMK
PiA+PiBNb2R1bGVOb3RGb3VuZEVycm9yOiBObyBtb2R1bGUgbmFtZWQgJ2Rpc3R1dGlscy5jb21t
YW5kJwo+ID4geWVwLCBJJ3ZlIHNlZW4gdGhhdCBhbHJlYWR5WzFdLCBvdXQgb2YgY3VyaW9zaXR5
LCB3aGF0IGRpc3RybyBpcyB0aGF0PyBJCj4gPiB0aGluaywgdGhhdCBzY29ucyBoYXMgbm8gcGxh
Y2UgaW4gdGhlIG1hc3RlciB0cmVlIGFzIG5vIHBhY2thZ2UgaW4gdGhlIG1hc3Rlcgo+ID4gdHJl
ZSBkZXBlbmRzIG9uIGl0LCBzbyBJJ3ZlIHN0YXJ0ZWQgbW92ZSBwcm9jZXNzIGludG8gcGFja2Fn
ZXMgZmVlZFsyXS4KPiA+Cj4gPiAxLiBodHRwczovL2dpdGh1Yi5jb20vb3BlbndydC9vcGVud3J0
L2NvbW1pdC8zMTZjOGI1NTAzZTU0Y2RiM2VlNWJkM2I1ZDgxYTNiN2RkMTM5Mjk0I2NvbW1pdGNv
bW1lbnQtMzQ0NjA4NzUKPiA+IDIuIGh0dHBzOi8vZ2l0aHViLmNvbS9vcGVud3J0L3BhY2thZ2Vz
L3B1bGwvOTU4NAo+ID4KPiA+IC0tIHluZXp6Cj4gPgo+IEZyZXNoIGluc3RhbGwgb2YgRGViaWFu
IDEwICgiQnVzdGVyIikgb24gQU1ENjQgYWZ0ZXIgbXkgdXN1YWwKPgo+IGFwdCBpbnN0YWxsIGJ1
aWxkLWVzc2VudGlhbCBnaXQgZ2l0ayBsaWJuY3Vyc2VzNS1kZXYgZ2F3ayB1bnppcCB3Z2V0Cj4g
Y3VybCBjY2FjaGUgcnN5bmMgemxpYjFnLWRldgpHb3QgdGhpcyBhcyB3ZWxsLiBBbnkgd2F5IHRv
IHRlc3QgZm9yIGRpc3R1dGlscyBpbiBwcmVyZXEubWs/Cj4KPgo+IEplZmYKPgo+Cj4KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IG9wZW53cnQtZGV2
ZWwgbWFpbGluZyBsaXN0Cj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+IGh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVs
IG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlz
dHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
