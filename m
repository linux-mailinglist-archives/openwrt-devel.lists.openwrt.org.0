Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3716D593A3
	for <lists+openwrt-devel@lfdr.de>; Fri, 28 Jun 2019 07:49:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	References:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OrhHf36UiY/+wkrJo8GFiD2wi7wqPc6Xd99IOTtuL9M=; b=ibdl9sPNzgDZCvIInikBjLKhK
	HLEg2leEyjURSa2/GnMTiXR1NKFY7BzwwYlsrqB0rdzk6At8YLBzZQ4jtwwoeocchCPEL7WI5f3UF
	6DhiSoaps1eosqa8z7fTTYsx4AQxxXxEcjwvfbU5ziMDww5o0wT0WM5nKSRTbhcTXI10/teSaDdCw
	ofdn+bqQy6qpyk5grRnH8K0nttCGTa6JAWZ22uB4l3+Me7stVr5Fch7710KntyOcDkyAOHFVU3BJn
	uEChXFiAowBoKjMEKxMC1vIwRY4gm1T2UJyq3X1HIs+AID9BGm7KP5a3meTF0Fsb3W36mNBLcjhVu
	nLAAmWCvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgjkT-0003NY-L0; Fri, 28 Jun 2019 05:48:37 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgjkB-0003NB-5z
 for openwrt-devel@lists.openwrt.org; Fri, 28 Jun 2019 05:48:20 +0000
Received: by mail-lj1-x244.google.com with SMTP id 16so4688007ljv.10
 for <openwrt-devel@lists.openwrt.org>; Thu, 27 Jun 2019 22:48:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=YNIfTXXzO+EulIUMIIRQk+Bro/OYVkcp3bhqWvdF25Y=;
 b=OpZ3ehDz2Qb068u02HigTgB55rQqH/ltWSTjgJCKNQ5idPK0/IYd3Z9WPQSCyTTVTr
 wYVAlpixJ4kcPbEWvbgsWCi+HTwUKvq0oPohypCJ9bTCMq8/lmfXQfkDvBfNgSVZPwtd
 +XqKMk/SMMdZIJJhK/WDqqymW16wo+5YQHGAAks7pEevRWeY7GgRrwQkf2ea1x2gnDcf
 YjqQrc9ijaCUhAqKNONUb6TY/FFNQaP3kqb+ssX/hkF9jMgxSJt9RA5mXFpVsz57K2/i
 j2/AOpZKtXK/OlcSBKp1HHRLqY1CYv+3sn2l66b4VDOXdIUFqguf4eau7k45bte5APR5
 6EqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YNIfTXXzO+EulIUMIIRQk+Bro/OYVkcp3bhqWvdF25Y=;
 b=FvjYJH8wpXwjvChc27VODvdsEO5u7P1GTRqUnjm4aSXwFdGoUuDctge6MVtfkZ5jnW
 m7H0sbTT1b38MnoaTwNc+pUe2muk1+QoRmyWhlj53iYhiS4TC1pF0IObls0boJfeA1dE
 aG1rfnsXroz98VpbxI8Pl3H1qGUeBmDO/5Fl9eUg5e2GE2l5TxDy3UaORW3zvgP9ooD+
 Pl99f9P32OVStzPOC0nO2bLyh1rOh96D13DHXOD5+fhh6CQmu4B4sGDVzZpuZu1/4T3f
 QuR2dmImXUv122rwIU4fzIGrafm9rcc7k3IwmEu3CBRV4NC3lGAURwNS85ygHqh/v/OR
 5wkQ==
X-Gm-Message-State: APjAAAXXPzy9jfvjsFcaFfxOP44YbQJ7Ebo96jwpUF+5JLubMnmt4Iyx
 pNNNaR//iaUGLal1OAUg66E=
X-Google-Smtp-Source: APXvYqwpS1yMWlgPCdZ48vrKcfn9xByJv5BcgrP6Zcetzdp7WNuujHcR+A9MNOT9IR1yVix7SZMMfw==
X-Received: by 2002:a2e:5b1b:: with SMTP id p27mr4787082ljb.97.1561700896761; 
 Thu, 27 Jun 2019 22:48:16 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id p15sm382916lji.80.2019.06.27.22.48.15
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 22:48:15 -0700 (PDT)
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org, Jo-Philipp Wich <jow@openwrt.org>
References: <20190621123002.9404-1-zajec5@gmail.com>
 <20190622121135.5029-1-zajec5@gmail.com>
Message-ID: <32a5526b-b547-ac24-4d26-ab85e79a969d@gmail.com>
Date: Fri, 28 Jun 2019 07:48:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.2
MIME-Version: 1.0
In-Reply-To: <20190622121135.5029-1-zajec5@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_224819_223231_621E3314 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] [PATCH V2 1/2] lua: include version number in
 installed files
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
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMjIuMDYuMjAxOSAxNDoxMSwgUmFmYcWCIE1pxYJlY2tpIHdyb3RlOgo+IEZyb206IFJhZmHF
giBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPiAKPiBUaGlzIHdpbGwgYWxsb3cgaW5zdGFs
bGluZyBMdWEgNS4xIGFuZCBuZXdlciB2ZXJzaW9ucyBhdCB0aGUgc2FtZSB0aW1lLgo+IAo+IFNp
Z25lZC1vZmYtYnk6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPiAtLS0KPiBW
MjogQnVtcCBQS0dfUkVMRUFTRQoKSSdtIGdvaW5nIHRvIGZpeDoKCkFwcGx5aW5nIC4vcGF0Y2hl
cy1ob3N0LzAxMC1sdWEtNS4xLjMtbG51bS1mdWxsLTI2MDMwOC5wYXRjaCB1c2luZyBwbGFpbnRl
eHQ6CnBhdGNoaW5nIGZpbGUgTWFrZWZpbGUKSHVuayAjMSBGQUlMRUQgYXQgNDIuCjEgb3V0IG9m
IDEgaHVuayBGQUlMRUQgLS0gc2F2aW5nIHJlamVjdHMgdG8gZmlsZSBNYWtlZmlsZS5yZWoKCmFu
ZCBwdXNoIHRoaXMgb25lLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5v
cGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Bl
bndydC1kZXZlbAo=
