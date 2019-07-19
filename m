Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5AE6E0F6
	for <lists+openwrt-devel@lfdr.de>; Fri, 19 Jul 2019 08:21:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qDL0MZwg5ZRGmSDLmVVyhQX6E8DtRyQ5dhJFMWoKWjU=; b=XswAWwlz9iqiV3
	vdbeFEkyLeGNIMPjyIpsl482n2Q4UXxGkx5ACkdqNrnmlkWnGjWe2lpi+Zze+oUkM15e5nj2WsKKB
	3gy2bfshvgyDvt/m+utUUiWID1DmUe/dFrliAmpq4TlAAqzpJ4V03axkD0I4X+co1U8Z5eC1kp0hm
	YIwSIlrJUyL1Hk0+nlfVI0ADYPhlWwCAp02U4+Zr5iTP2hQAIqjHsENvyV/LcDmflT7pdAVNl2Mo2
	iSjrT08ip6xt+5fwjTxIXuTgycXQaRGdaHpsuAecqyWQN9kzS9UyWy0nHREL+BfKAbeArQSEarcoU
	XjuvKRtRNCtCNX4or2lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoMGR-0007h6-VD; Fri, 19 Jul 2019 06:21:08 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoMGI-0007gE-S9
 for lede-dev@lists.infradead.org; Fri, 19 Jul 2019 06:21:00 +0000
Received: by mail-wr1-x42e.google.com with SMTP id p17so30980217wrf.11
 for <lede-dev@lists.infradead.org>; Thu, 18 Jul 2019 23:20:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:openpgp:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=u6qziyIMiq96X9enpRnTgTcWjTYKUSNbBFTrlrDo9vY=;
 b=P8+TUOTMzjjVPiAT6zzvXScdW6R+0ZjYLyy5nULGx5ez3rAdzv5funz3o2N0J0WT2M
 961MJEuI7qLnsH69K39uOGq9ycxwjsY613S/P/BnIghxJqquZqAEJOzYVAoUuGx/BvKZ
 64A1w+MRbuD8Yz3CAcEFT+0JNcy6G2PUgK4dIbEFfQnntcnotOvJQuf3f+WlbiwfjOGN
 IbMbWYKuPNTKrTvLRE11j0RyW73Wurc+9h+I5geM7Xs6QPF3iRARvpLjy6zXWNbR+57H
 Mmsc2B4w5PZv7PxITPMZWx7jp71SD9WN6LX+Kx/U9ALI9DjQ0wDREdlWaQznk7oKI5pz
 ejYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:openpgp:message-id:date
 :user-agent:mime-version:content-language:content-transfer-encoding;
 bh=u6qziyIMiq96X9enpRnTgTcWjTYKUSNbBFTrlrDo9vY=;
 b=dUaLjvlJQCjXHRAlRwX1YHXIaSMZmL4pqczJp/QlS3jjSS7xXa0nKyZpF0Uu6T9j+f
 fT4tVFx1r0bEn0mX2KFq9NJZRlf2XtuL+JGNRQF64tibqjyovf/2Xe+l3WIDNaot7SYZ
 FFWcSgTd63xwStG/2AeDNsPX0n1lhmWWx9SVV6Q1QqYb82jnu48u3FcGmmUnv/7eTk1M
 sPK+1dJHLt6dG18RHlynmpoXLnpjwTA4p+96my16wvCyOjGypjtlyiYlkZuXO4of8rXm
 s5kqRrouIP3TNjZABk0H5wOBBqQAuUJ+Wl7IJxqFwVcccmVaF5tpCn6LgURZd/ehsG2x
 sJOQ==
X-Gm-Message-State: APjAAAX3TpDgfFmTeSsc9I+uUei93xqzUeimkjzBalRT7n0U3QQyvz3r
 qnCL9U4v3DqAdhEMrU+PqfgC2UO4rIE=
X-Google-Smtp-Source: APXvYqzlKEvoCsBR1rFzfmGSDfUJwzjrrca3PYRVlongOZ8G3zGErZiT9coHQ+RHmIS/D97QOajKkA==
X-Received: by 2002:adf:b1d0:: with SMTP id r16mr55114356wra.332.1563517255216; 
 Thu, 18 Jul 2019 23:20:55 -0700 (PDT)
Received: from localhost
 (p200300F663CBC7AC786B10F8ACD1B0FD.dip0.t-ipconnect.de.
 [2003:f6:63cb:c7ac:786b:10f8:acd1:b0fd])
 by smtp.gmail.com with ESMTPSA id f204sm39707019wme.18.2019.07.18.23.20.54
 for <lede-dev@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jul 2019 23:20:54 -0700 (PDT)
From: e9hack <e9hack@gmail.com>
To: Developers LEDE <openwrt-devel@lists.openwrt.org>
Openpgp: preference=signencrypt
Message-ID: <4d35a617-6c97-a205-ecf1-bbc2f3f889f9@gmail.com>
Date: Fri, 19 Jul 2019 08:20:53 +0200
User-Agent: Thunderbird
MIME-Version: 1.0
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_232058_938841_0AE465EC 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42e listed in]
 [list.dnswl.org]
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (e9hack[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
Subject: [OpenWrt-Devel] wlan startup is delayed
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

since some time the wlan startup after boot is delayed for a long time. I'm using a TP-Link Archer C7 v2 router with
2,4G and 5G wifi. From a boot log from end of June:

Sun Jun 30 10:16:50 2019 kern.info kernel: [   73.083241] IPv6: ADDRCONF(NETDEV_CHANGE): wlan1: link becomes ready
Sun Jun 30 10:16:51 2019 kern.info kernel: [   73.804867] IPv6: ADDRCONF(NETDEV_CHANGE): wlan1-1: link becomes ready
Sun Jun 30 10:16:51 2019 kern.info kernel: [   74.403413] IPv6: ADDRCONF(NETDEV_CHANGE): wlan1-2: link becomes ready
Sun Jun 30 10:16:52 2019 kern.info kernel: [   74.954282] IPv6: ADDRCONF(NETDEV_CHANGE): wlan1-3: link becomes ready
Sun Jun 30 10:16:52 2019 kern.info kernel: [   75.400965] IPv6: ADDRCONF(NETDEV_CHANGE): wlan1-4: link becomes ready
Sun Jun 30 10:16:53 2019 kern.info kernel: [   75.879011] IPv6: ADDRCONF(NETDEV_CHANGE): wlan1-5: link becomes ready
Sun Jun 30 20:55:27 2019 kern.info kernel: [  147.632121] IPv6: ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
Sun Jun 30 20:55:28 2019 kern.info kernel: [  148.177353] IPv6: ADDRCONF(NETDEV_CHANGE): wlan0-1: link becomes ready
Sun Jun 30 20:55:28 2019 kern.info kernel: [  148.608287] IPv6: ADDRCONF(NETDEV_CHANGE): wlan0-2: link becomes ready

The first 2,4G wlan is ready after 73 seconds and the first 5G after 147 seconds. The 5G wlan needs more time, because
it does ACS. The last wlan is ready after 148 seconds.

From yesterday:

Thu Jul 18 23:49:26 2019 kern.info kernel: [  146.673954] IPv6: ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
Thu Jul 18 23:51:58 2019 kern.info kernel: [  298.468689] IPv6: ADDRCONF(NETDEV_CHANGE): wlan1: link becomes ready
Thu Jul 18 23:51:59 2019 kern.info kernel: [  300.090816] IPv6: ADDRCONF(NETDEV_CHANGE): wlan1-1: link becomes ready
Thu Jul 18 23:52:00 2019 kern.info kernel: [  300.116162] IPv6: ADDRCONF(NETDEV_CHANGE): wlan1-2: link becomes ready
Thu Jul 18 23:52:00 2019 kern.info kernel: [  300.157132] IPv6: ADDRCONF(NETDEV_CHANGE): wlan1-3: link becomes ready
Thu Jul 18 23:52:00 2019 kern.info kernel: [  300.206162] IPv6: ADDRCONF(NETDEV_CHANGE): wlan1-4: link becomes ready
Thu Jul 18 23:52:00 2019 kern.info kernel: [  300.580767] IPv6: ADDRCONF(NETDEV_CHANGE): wlan1-5: link becomes ready
Thu Jul 18 23:52:26 2019 kern.info kernel: [  326.853947] IPv6: ADDRCONF(NETDEV_CHANGE): wlan0-1: link becomes ready
Thu Jul 18 23:52:26 2019 kern.info kernel: [  327.087462] IPv6: ADDRCONF(NETDEV_CHANGE): wlan0-2: link becomes ready

The first 5G wlan is ready after 146 seconds and the first 2.4G after 300 seconds. The last wlan is ready after 327 seconds.

It is possible to revert this back?

Regards,
Hartmut

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
