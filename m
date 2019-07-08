Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 391BC62064
	for <lists+openwrt-devel@lfdr.de>; Mon,  8 Jul 2019 16:22:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=G3CRrC5J4K9n9S9xY+py2hGxlzwWq5ikH81JvGnVvjc=; b=vDP69qxUQ+QE4M6IWmh1eIwoJh
	KBFeWD5gG2+M0oPKm0GYXC6NEL2hG0HlwOQNLBhX5amXC7lg+icu7alnYYoCXLHnukOlCiYZ0Wqfo
	xqALbgpBjdkhzp5gikcBGP7zhvS60M69O5IQEailS7CjlU8Wi499YJO/lTV3LNNRC53kqtebapWYn
	BcyOKz4nO/uQd4NmU6UOG01FPzzS6QnRbeYmgkcm+ZtmK3yDlJ8sCIIiJ0RfR4Xvc/on1fyDI8JYT
	KZWSSz/4Z7uQ/3aHH05RlIWYSoRgkn0Fzj87dW26nLPaqnQz87zKenoFLPurLh+L9nOmDnzSiNDVl
	5yuoiyGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkUXB-0005dl-GQ; Mon, 08 Jul 2019 14:22:25 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkUX1-0005dT-Oq
 for openwrt-devel@lists.openwrt.org; Mon, 08 Jul 2019 14:22:17 +0000
Received: by mail-qk1-x744.google.com with SMTP id s145so9840399qke.7
 for <openwrt-devel@lists.openwrt.org>; Mon, 08 Jul 2019 07:22:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=OTtKKZCOR33C0CBKSRfViVlxLimL4yn39Uwfe9hrt34=;
 b=or3uwBvWr8JDA1gmsUyhA6z/t14jVHlbcCXye5ettT2BlY0iGBTZ5E7F1yCLwguQ+s
 lQ6f2vClcrXaOuv8mv3+cAXkbhQMaEQ76HZXYTun8fizYzmuToOVRcRny9QsnkhUSJ2j
 SQhJZo6d8Ams7wAwFRbOP3hKR4hIlGiDGQIlWkr2UX10HXI/oiSr7KSSwFZQ9glCYd7u
 LVwFtAElohlA8cKVF5E0nKCUc0RmCfS6uXefeZlAJuN6Vk6cN/yyBMy+BoVHHQC9kDuS
 oXrjW+1OV2//wQ8EtxfBKD12bMgh5ZDMly3j3Dht1T5n9TNfonss04qjpq+ZFvHWBE/H
 IVzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=OTtKKZCOR33C0CBKSRfViVlxLimL4yn39Uwfe9hrt34=;
 b=KO6LmTcUFaouELuKXeD8MGj7cim9A/kGZWkKXi+ZabA6WEKaqWJWCpGjfwP5A74VZj
 naSCzimsvB/Jx2BbGpGvRQy10yD6x/VXp47ROfarObK6BcVODitmczqA1kCR5XlTNjjK
 CAb3TT4Be5DRpkYzPSWf7pdO3Yl/kqIifrW12RTIb1CTNNhCW4woClKFwRyj2TpDNOgT
 qo+/zAtEue79rY8fY91CPC63i5OjgpWR+CMKHnGZgYjUkx5Ipmlgbg6Qf4hvUttFq1Vz
 UpGIC6TXe8NSTQl2Q694kKLOHRusSoSIxo7HvxMvbLu/HdCWN4zYGcdIzgtrC0WkZ7mR
 bpng==
X-Gm-Message-State: APjAAAX4xyD68ud4TF2C8eCNksRKvbtYxoD5VUdp6pCrSaN/a57NIAtG
 uLpYbv0iGb0xtLu/9uVMxq7OZPwt1I9zZJyt+HqUwg==
X-Google-Smtp-Source: APXvYqw6g0R4jlKtjkWfFGNiXS051q4LR3jaBmQtznaqW3j9rcUb2SMYphAp30o7w9ZXiLFxcPF9NJ5r5O9Z7OPKOL0=
X-Received: by 2002:a37:e30b:: with SMTP id y11mr15240197qki.100.1562595734385; 
 Mon, 08 Jul 2019 07:22:14 -0700 (PDT)
MIME-Version: 1.0
References: <CANoib0HfXsxdD4hDAPPh8r-X_eH=-+rh+t2is0du6GiczfnmCQ@mail.gmail.com>
 <20190708141952.5812-1-cotequeiroz@gmail.com>
In-Reply-To: <20190708141952.5812-1-cotequeiroz@gmail.com>
From: Eneas Queiroz <cotequeiroz@gmail.com>
Date: Mon, 8 Jul 2019 11:22:03 -0300
Message-ID: <CAPxccB2vwxQ98bCeHaVpr+aYkPji=-PYtXTZUA0JoLsFDzSgRg@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_072215_804065_005877E4 
X-CRM114-Status: UNSURE (   6.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
Subject: Re: [OpenWrt-Devel] [PATCH] wolfssl: fix PKG_HASH
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

SSBmb3Jnb3QgdG8gbWVudGlvbiBpdCwgYnV0IHRoaXMgaXMgZml4IGlzIGZvciAxOS4wNyBvbmx5
LgoKRW5lYXMKCkVtIHNlZywgOCBkZSBqdWwgZGUgMjAxOSDDoHMgMTE6MjAsIEVuZWFzIFUgZGUg
UXVlaXJvego8Y290ZXF1ZWlyb3pAZ21haWwuY29tPiBlc2NyZXZldToKPgo+IENvbW1pdCAzMTY3
YTU3IG1pc3NlZCBpdC4KPgo+IFNpZ25lZC1vZmYtYnk6IEVuZWFzIFUgZGUgUXVlaXJveiA8Y290
ZXF1ZWlyb3pAZ21haWwuY29tPgo+Cj4gZGlmZiAtLWdpdCBhL3BhY2thZ2UvbGlicy93b2xmc3Ns
L01ha2VmaWxlIGIvcGFja2FnZS9saWJzL3dvbGZzc2wvTWFrZWZpbGUKPiBpbmRleCA3YWFhNTYy
NTM5Li4yNjRiZTAyNDk2IDEwMDY0NAo+IC0tLSBhL3BhY2thZ2UvbGlicy93b2xmc3NsL01ha2Vm
aWxlCj4gKysrIGIvcGFja2FnZS9saWJzL3dvbGZzc2wvTWFrZWZpbGUKPiBAQCAtMTMsNyArMTMs
NyBAQCBQS0dfUkVMRUFTRTo9MQo+Cj4gIFBLR19TT1VSQ0U6PSQoUEtHX05BTUUpLSQoUEtHX1ZF
UlNJT04pLnRhci5nego+ICBQS0dfU09VUkNFX1VSTDo9aHR0cHM6Ly9naXRodWIuY29tL3dvbGZT
U0wvd29sZnNzbC9hcmNoaXZlL3YkKFBLR19WRVJTSU9OKQo+IC1QS0dfSEFTSDo9ZGM5N2MwN2E3
NjY3YjM5YTg5MGUxNGY0YjRhMjA5ZjUxNTI0YTRjYWJlZTdhZGI2YzgwODIyZWU3OGMxZjYyYQo+
ICtQS0dfSEFTSDo9NzBlNGZiZWI5MTI4NGEyNjliMjVhODRmYzUyNjc1NWM2NzA0NzVhZWU0MDM0
YTZmMjM3YjFmNzU0ZDEwOGFmMwo+Cj4gIFBLR19GSVhVUDo9bGlidG9vbAo+ICBQS0dfSU5TVEFM
TDo9MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Bl
bndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpo
dHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
