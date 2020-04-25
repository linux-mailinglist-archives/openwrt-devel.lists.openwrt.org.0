Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E2E1B8891
	for <lists+openwrt-devel@lfdr.de>; Sat, 25 Apr 2020 20:45:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:
	Message-Id:Date:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GOYDLLw7uWO9XHCxVtZYzL2VqGwyQrMF67xRetgVu7E=; b=QbF9EZoKWZxKzW
	5X0hwFnaendXYLOsFa0jXl6v9SVPPWwUgTPbkKCdk49I1igvCNP4FNARs85kZIZOSLWnugrgFdpxu
	9u/ECufe94umvuRVWHnH7d6Y+k5EO+fJXXNEfEJVK5NK8LEQP7Y3nBgRSU5anCaQK36zVsGvT8Xr5
	fyR8y+auyrwUdQgfZJkFI7W8cHGOA7mcSnXoNwU7G+Ans9RjKm69nDGBEg9LvBOcCxlQ9cdT9yL7W
	J++TG383d3nmfdAc0FpdXFqE+FWULv8H5FKc3UUQ3TKeAJ0YkXMLdqERiLWzS73ktFRoHRovFGqef
	MeCmp5V0EgoiiPg82cWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSPnR-0007sp-LV; Sat, 25 Apr 2020 18:45:01 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSPnK-0007ok-Us
 for openwrt-devel@lists.openwrt.org; Sat, 25 Apr 2020 18:44:56 +0000
Received: by mail-pg1-x52d.google.com with SMTP id x26so6326322pgc.10
 for <openwrt-devel@lists.openwrt.org>; Sat, 25 Apr 2020 11:44:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=qLEoZws2khfHKEkF1qh/DMuUyx4MiBFs+T83JylTsCA=;
 b=IdLtO5H1q5nXvk8nLEpUGSJwJEOJPN4eHlVO4nTJoFh/kK7b9Ayx8GuPJd1PpIyakK
 EtGH/LNBNSIl1noQsycS1Rxm9fkf9hMOHAPMXkBkXx/dbUAWgOdUrfLcDXz2edX+Bg5I
 YKvl5x5chfHr2h/o7odZrzy99ZU+MsKx2KNm19l0vuPc1lzGD3yW6hBkGJs/+fNZ8wJ1
 KzHENcXLAA9xBXe99zf8IsmZKUYE2x4I2kCmIuOpb4/dLjxh/i9dLqfjLlc+nDoGPml7
 jMPuJ9VEqmvBGVrHHyxSTQvNEr//+AtdNPmXE45byMJdyFhEgbWqOTEVp+pYdHipL0bX
 fCvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=qLEoZws2khfHKEkF1qh/DMuUyx4MiBFs+T83JylTsCA=;
 b=H2Ghe6PHCmaCjzu7epZGYQCqlI+aDxoLRGkvUfmDSGsd6GOnRYJF1i5svxrmwFUUxD
 45XE5B5MdvNfeLVgPHDRTKiXyI1pVdu7O/SLc4zwdsPQbiBSrqWyylEYp96Xz3+eSwxQ
 CM+rTgX/8bzeXke1yyS1mlR1REtbcVPFDJuZp0NKr123gt6hErrObCuylcNnu3hfoygs
 eubp320Z9os3E/u/nWs1mHpItLLIjODvpury7M1JWRDlp/En/7VHd4kb/HhQNJ0Q4A26
 /xJmhjVYQfp5WB5eOrmIJ4Zk/8RAnBkGe43CzSgFCi8efB/z2imG38ez7D/+sd12e7co
 iPtQ==
X-Gm-Message-State: AGi0PuY7t8qRh6ajObzjGenwMI0wd6Xo1AjhWSNJjkX0kT8Vc63qKBxf
 85lABXr09nPil6sx2HIOm5w=
X-Google-Smtp-Source: APiQypJqRpODQb6GMSnT9IG70aS28MApKo3sRLU8F6LNeLSUmypb7OVLvuvrX5lwqgJvWilQ9UrAkg==
X-Received: by 2002:aa7:9529:: with SMTP id c9mr16460322pfp.279.1587840288631; 
 Sat, 25 Apr 2020 11:44:48 -0700 (PDT)
Received: from [192.168.0.147] (76-14-109-232.rk.wavecable.com.
 [76.14.109.232])
 by smtp.gmail.com with ESMTPSA id b8sm8423328pft.11.2020.04.25.11.44.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 25 Apr 2020 11:44:47 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sat, 25 Apr 2020 11:44:46 -0700
Message-Id: <EE89DA7A-3830-4BF2-B4CF-947F873630D4@gmail.com>
References: <06e362cc-08be-6092-3286-ab1c23df1c31@lucabert.de>
In-Reply-To: <06e362cc-08be-6092-3286-ab1c23df1c31@lucabert.de>
To: Luca Bertoncello <lucabert@lucabert.de>
X-Mailer: iPhone Mail (17C54)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_114455_019124_A8FF58FB 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52d listed in]
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

Cgo+IE9uIEFwciAyNSwgMjAyMCwgYXQgMTE6MzAgQU0sIEx1Y2EgQmVydG9uY2VsbG8gPGx1Y2Fi
ZXJ0QGx1Y2FiZXJ0LmRlPiB3cm90ZToKPiAKPiDvu79BbSAyNS4wNC4yMDIwIHVtIDIwOjI3IHNj
aHJpZWIgQWxiZXJ0byBCdXJzaToKPiAKPiBIaQo+IAo+PiB0aGF0J3Mgd2VpcmQsIHRoYXQncyA2
NE1CLiBNYXliZSBhIFYyIGluIGFuIG9sZGVyIGJveD8KPj4gV2hhdCBpcyB0aGUgQ1BVPwo+PiBj
aGVjayBjYXQgL3Byb2MvY3B1aW5mbwo+PiBUaGUgVjEgaGFzIEF0aGVyb3MgQVI5MTAzLgo+IAo+
IHJvb3RAT3BlbldydDp+IyBjYXQgL3Byb2MvY3B1aW5mbwo+IHN5c3RlbSB0eXBlICAgICAgICAg
ICAgIDogQXRoZXJvcyBBUjkxMzIgcmV2IDIKPiBtYWNoaW5lICAgICAgICAgICAgICAgICA6IFRQ
LUxJTksgVEwtV1IxMDQzTkQKPiBwcm9jZXNzb3IgICAgICAgICAgICAgICA6IDAKPiBjcHUgbW9k
ZWwgICAgICAgICAgICAgICA6IE1JUFMgMjRLYyBWNy40Cj4gQm9nb01JUFMgICAgICAgICAgICAg
ICAgOiAyNjUuNDIKPiB3YWl0IGluc3RydWN0aW9uICAgICAgICA6IHllcwo+IG1pY3Jvc2Vjb25k
IHRpbWVycyAgICAgIDogeWVzCj4gdGxiX2VudHJpZXMgICAgICAgICAgICAgOiAxNgo+IGV4dHJh
IGludGVycnVwdCB2ZWN0b3IgIDogeWVzCj4gaGFyZHdhcmUgd2F0Y2hwb2ludCAgICAgOiB5ZXMs
IGNvdW50OiA0LCBhZGRyZXNzL2lydyBtYXNrOiBbMHgwZmZjLAo+IDB4MGZmYywgMHgwZmZiLCAw
eDBmZmJdCj4gaXNhICAgICAgICAgICAgICAgICAgICAgOiBtaXBzMSBtaXBzMiBtaXBzMzJyMSBt
aXBzMzJyMgo+IEFTRXMgaW1wbGVtZW50ZWQgICAgICAgIDogbWlwczE2Cj4gc2hhZG93IHJlZ2lz
dGVyIHNldHMgICAgOiAxCj4ga3NjcmF0Y2ggcmVnaXN0ZXJzICAgICAgOiAwCj4gcGFja2FnZSAg
ICAgICAgICAgICAgICAgOiAwCj4gY29yZSAgICAgICAgICAgICAgICAgICAgOiAwCj4gVkNFRCBl
eGNlcHRpb25zICAgICAgICAgOiBub3QgYXZhaWxhYmxlCj4gVkNFSSBleGNlcHRpb25zICAgICAg
ICAgOiBub3QgYXZhaWxhYmxlCj4gCj4gSXQgaXMgZGVmaW5pdGl2bHkgTk9UIGEgQVI5MTAzLi4u
Cj4gQW55IGlkZWE/CmFyOTEwMyBpcyB0aGUgV2lGaSBjaGlwLgoKVGhpcyBpcyBpbmRlZWQgYSB2
MS4gU3RyYW5nZSB0aGF0IGl0IGhhcyA2NE1CIG9mIGZsYXNoLiBNYXliZSBzb21lb25lIG1vZGRl
ZCBpdC4uLgo+IAo+PiBvcGVud3J0IGZvcnVtIGh0dHBzOi8vZm9ydW0ub3BlbndydC5vcmcvCj4g
Cj4gT0ssIHRoYW5rcyEgSSdsbCBhc2sgdGhlcmUuCj4gCj4gUmVnYXJkcwo+IEx1Y2EgQmVydG9u
Y2VsbG8KPiAobHVjYWJlcnRAbHVjYWJlcnQuZGUpCj4gCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+
IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPiBodHRwczovL2xpc3RzLm9wZW53cnQu
b3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Bl
bndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21h
aWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
