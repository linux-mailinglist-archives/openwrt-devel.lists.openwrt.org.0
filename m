Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 867491B88F0
	for <lists+openwrt-devel@lfdr.de>; Sat, 25 Apr 2020 21:29:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:
	Message-Id:Date:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sQzc247pYYiG/CDWfreyJCFxKY3yXKMstDARGGtxiSA=; b=AXlAXCafefyY/Z
	sqaPYCdN4YtDAtUQpgbTxQP2k1iG2XO72ct6qC34OgD8Oc7/i8Sk80+3RQSPWXDQDS6aS2p11458t
	lTcjA1ASiUDSw8QqnTEiNd+ZMUtEwWqwGoSS/Z9Wrys5GH/Q7zVvqoScYN6rthyrx42Eib0QMeiv/
	Bn4KV/6Tasqjv3CMylAcbvWkpg5aIGIC+Zb3uOI6txKMCk0AoR8w6A2c1O2y5fyTJa2mNf71yoxs0
	xTXK5GkjPZ76tqYQUjGtrJiv1GipSXRBb/y3Ot7WMjGn2+H8ohXHs4lXA5xdCGIbOfRjiF5pu/Zla
	WiXWv/ihDSHRvcrHgAmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSQUY-0000Ma-GD; Sat, 25 Apr 2020 19:29:34 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSQUA-0000Dj-JY
 for openwrt-devel@lists.openwrt.org; Sat, 25 Apr 2020 19:29:12 +0000
Received: by mail-pj1-x102e.google.com with SMTP id a7so5369026pju.2
 for <openwrt-devel@lists.openwrt.org>; Sat, 25 Apr 2020 12:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=+GvUxBDMGI5b5eADipNBwiGQuxAlWBCFMV1HJlpkck4=;
 b=EXR1nLcnG2p8v3OsTw/HONBTtOptX4lQPWaU3e9gPVGbeR0floAgFhUzviMpP290ez
 3DI55+yRvXX9JVU0rz6aBsdYR+PR+4xecgzFa1dHnqoLJ682zGVV+rQ39ErDYnY6/NTg
 4Oq4JE7ykr959rf1Tgggp0xUs+3mBcvdVqPT1jkmbX+yPmhEF5Z7ADw6+aN9CCgiFVW9
 yduFrTKoC6AOX10GyT1jyW8RVlX+3XVVA0Gn/oJgNypIiNNXzcK2DTwSyN3p6AKFS7cD
 ZXjnaOGhZOhAVriA52XuCgwJH9LOEQFu+BY2IuUcT+WwMP20H15YS7XiYyJK5WSclR3w
 o7Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=+GvUxBDMGI5b5eADipNBwiGQuxAlWBCFMV1HJlpkck4=;
 b=BX+4nULR6bruUI2E7SHL7MN5REUWPCI/GIHNzp5mo0pqFnyLRmbGb9csoXTO1khJl/
 ZI2f9uVocVsnOyLjKU4+3WfB3iyN+LUtZShvWS1L1vzMp8lbdUVJiONHMvRRPe+mgSwd
 NdGvV5UZhthzpkJ8dA7O31SDVGZZo8zs5gx77cogvU5l4WvUWeylHfKrzQZxHzxn1GPC
 bMGrZXriRhPkrwXvKLrJPrUcsCMIsJ3oxllxBZ7kUDftOrqU5bxKiDHS+lOw1+Lpj+av
 9EZK+PiC0ZncL/NfgOsNLj2rQlMHyvAGFkBh8NJs3iZkaB8bf1HnQyJVbPs1MPSiW22w
 OZpw==
X-Gm-Message-State: AGi0PuYadeLEeHcJjbQ+eU5TY2MSgQ+GyjJhXQgxANiq6zoy55mV02wl
 QsbQJpeOrbEy9zkbCO9SUpo=
X-Google-Smtp-Source: APiQypJdyxviwsDR7nNOofKM0ZleqMGZBV65kgzDpVA7gra2i0w8m5XTa8m7DqXikKvICCPuduuqMg==
X-Received: by 2002:a17:90a:a00a:: with SMTP id
 q10mr14575748pjp.103.1587842949635; 
 Sat, 25 Apr 2020 12:29:09 -0700 (PDT)
Received: from [192.168.0.147] (76-14-109-232.rk.wavecable.com.
 [76.14.109.232])
 by smtp.gmail.com with ESMTPSA id w3sm8485672pfn.115.2020.04.25.12.29.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 25 Apr 2020 12:29:08 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sat, 25 Apr 2020 12:29:07 -0700
Message-Id: <5D420BAB-70C2-4C63-9B8D-C636B9AE55B7@gmail.com>
References: <f173964b-e4e8-687f-1310-33bb13cb4ef1@lucabert.de>
In-Reply-To: <f173964b-e4e8-687f-1310-33bb13cb4ef1@lucabert.de>
To: Luca Bertoncello <lucabert@lucabert.de>
X-Mailer: iPhone Mail (17C54)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_122910_707840_B2EA8752 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:102e listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Upgrading LEDE to 19.07
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

Cgo+IE9uIEFwciAyNSwgMjAyMCwgYXQgMTE6NDYgQU0sIEx1Y2EgQmVydG9uY2VsbG8gPGx1Y2Fi
ZXJ0QGx1Y2FiZXJ0LmRlPiB3cm90ZToKPiAKPiDvu79BbSAyNS4wNC4yMDIwIHVtIDIwOjQ0IHNj
aHJpZWIgUm9zZW4gUGVuZXY6Cj4gCj4+IFRoaXMgaXMgaW5kZWVkIGEgdjEuIFN0cmFuZ2UgdGhh
dCBpdCBoYXMgNjRNQiBvZiBmbGFzaC4gTWF5YmUgc29tZW9uZSBtb2RkZWQgaXQuLi4KPiAKPiBX
aXRoIDY0TUIgY291bGQgSSB1cGdyYWRlIHRvIDE5LjA3Pwo+IFRoaXMgaXMgdGhlIG9ubHkgaW50
ZXJlc3RpbmcgdGhpbmcgZm9yIG1lLCByaWdodCBub3cuLi4gOkQKU3VyZS4gVGhlcmXigJlzIG5v
IHJlYWwgY29tcGF0aWJpbGl0eSBpc3N1ZS4gSnVzdCB0aGUgMzJNQiBSQU0gcHJvYmxlbS4gSnVz
dCBkb27igJl0IHJ1biBBZGJsb2NrIHdpdGggYSB0b24gb2YgbGlzdHMuIEVhc3kgdG8gZ2V0IE9P
TSBsaWtlIHRoYXQuCj4gCj4gUmVnYXJkcwo+IEx1Y2EgQmVydG9uY2VsbG8KPiAobHVjYWJlcnRA
bHVjYWJlcnQuZGUpCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlz
dHMub3BlbndydC5vcmcKPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGlu
Zm8vb3BlbndydC1kZXZlbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5v
cGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Bl
bndydC1kZXZlbAo=
