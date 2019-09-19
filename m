Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A19B717E
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Sep 2019 04:18:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6KtnttlTsOzt5jl30Ku8hGoySx4VXiE2Joslmy7Dv28=; b=gyZXnuBHbd3Wuv
	/k77CABGnzLuWUcE72uJTcdK+vVran3TSHKuSA2oDr8ssjzkm39eho92Zp/StXGGAPQ1K0dC6byeg
	DKatYAszPskdED1M2+kOl/TiLnU1XU/lafaXBnx2tSJ1TygcxcC4cdcMYGW9bx0LgQ+rta8O2DY6y
	peh+K+Xzky8zcO/gwAs4z9lmNbqClRoUldgK2KGcIb10VNVxRav2CR5DaU9DuSePQWrIgcRKFwsIt
	TqWxm2l4Muf0Y9DgfzGC0JxN4mSbXhfjT24dtUsXz29TpUfYnqun5Zb+zOxvM90Li2UjyzU/jHbAp
	xhrYDIoxBdUpvNrHoSvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAm1l-00081o-OS; Thu, 19 Sep 2019 02:18:37 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAm1N-00080x-2O
 for openwrt-devel@lists.openwrt.org; Thu, 19 Sep 2019 02:18:14 +0000
Received: by mail-qk1-x741.google.com with SMTP id f16so1684298qkl.9
 for <openwrt-devel@lists.openwrt.org>; Wed, 18 Sep 2019 19:18:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=W/xOrVz6uK7w4LieyyIjZI+A/A4RymSR0/IQ+I+sQsg=;
 b=s9GSaK/YZ/CBTLUoCJbxYmqSM/6M8EdVCqNflYvn4JBdzdXwuZ1ChPwW9/6FipSGt/
 6TCgY4H4wufA+DqwfbzaKNSGvPuBmfpM3+D3YsFx932PQQPWOG1Lk+a8lCzictuSYmvw
 WpM+hMcI0rXmdPIG5fX32w/JYwSEskqWLa8/acLeIR1iO/0DWGPobpX9rWorAUZe18lh
 bo+C2XoaRcHi4u3z0CQ+Za+eI63XaMvwoIimt0yM4JCHU1CRmeZCFvxDMz534F/Vpjn6
 OC0tMQRJdCurP96oYYRRdIC0Fi2Cip/0bPWmR2VtaGM45BGag8zPkYra7GmUsBv2ylX0
 rh2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=W/xOrVz6uK7w4LieyyIjZI+A/A4RymSR0/IQ+I+sQsg=;
 b=Hs9fMJhncZnw46fTaQWz3GWzbohIEObypFj6jgHBckREHtVsT8488Doyj9uQRE+zaI
 EYdCtPgvhKfQa9UReluj47p0WyvtjyVOhE1xU2M5N5V4ZgV8ZvySVPnpf5K06mKfPHq7
 iHsfp3Dvmzhv5XkcvWhYgBA2KmGdilIbw2aOXhl8tsHiWieUkI+72NdLEDfKzXPx2j2w
 S8kcwfGU4iu+4d2SRctt42CUKCN+5KIAmBN41dr0duxVyQVx8IEVaC7ZIgiscfMTpTU4
 T9nB7fLI1mkLnKx0rMJwICzSa73DBpxJWBIzHXjLeXEhjY2MQtHPJBHWzRfgd9yeUdfc
 I25w==
X-Gm-Message-State: APjAAAVbTZc33TICTHKiYoao20Y6ckqwGZjjDsRsjWXJrxtgaEg+yOWJ
 4l/Gkk4+V/nX34x//f+p5IK8dJfU
X-Google-Smtp-Source: APXvYqysSo/YuDSEOaVC8cfDiZXABh/Jdg3XXLuHv17nC/Ldo3au8zRDxQU/ifBNQvfzKgSN0eMpzA==
X-Received: by 2002:a37:6250:: with SMTP id w77mr559093qkb.153.1568859491281; 
 Wed, 18 Sep 2019 19:18:11 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id i30sm3984496qte.27.2019.09.18.19.18.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 19:18:10 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 18 Sep 2019 23:18:00 -0300
Message-Id: <20190919021803.31271-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190912195558.11513-1-cotequeiroz@gmail.com>
References: <20190912195558.11513-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_191813_110528_4CEB00F8 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH ustream-ssl v2 0/3] wolfssl updates
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
Cc: Eneas U de Queiroz <cotequeiroz@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

ustream-ssl does not currently work with client apps.  They fail to
connect immediately.  uclient-fetch, for example, just show a
'Connection failed' message.  This was due to a change in the SSL
session struct.

While making small changes to my first attempt, I realized my testing
was not completely flawed.

Because of that, I failed to realize that while the struct change
happened in in v3.13.2, but the API to change it at the SSL struct was
only created in v4.1.0.

Keeping some of the calls using CyaSSL, but then having to add new
calls, only available as wolfSSL would become messy.  So, I started
by cleaning up the code, removing old CyaSSL remnants.

After fixing that, uclient-fetch failed to run unless
--no-check-certificate is used, which is not ideal.  So I added the
calls to perform CN validation. r

Note that even wolfssl has a X509_check_host function, which could
be used for openssl and wolfssl, they are  not 100% compatible, and its
definition is not really consistent from version to version.

X509_CHECK_FLAG_NO_PARTIAL_WILDCARDS is not defined, and even though
wolfSSL_X509_check_host apparently only exists to implement the openssl
function, they are not both enabled by --enable-opensslextra.
The wolfSSL function is, but the openssl isn't.  So I'm using the
wolfssl call.

As for testing, I run-tested each commit with wolfssl versions 3.10.4,
3.12.2, 3.15.3, and 4.1.0.  Since the fist commit does not fix
client-mode, I tested it using the example client/server apps (using a
client built with a different version).  Version 3.15.3 did not work
with the server app, so I checked the current HEAD, and it does not work
either, so it is not somehting I introduced.  It works after the next
fix is applied.

Everything works as expected from the next commit on.

Eneas

--

Eneas U de Queiroz (3):
  Remove CyaSSL, WolfSSL < 3.10.4 support
  ustream-io-cyassl.c: fix client-mode connections
  wolfssl: enable CN validation

 CMakeLists.txt                              | 25 +++++++----
 ustream-internal.h                          |  3 --
 ustream-io-cyassl.c => ustream-io-wolfssl.c | 47 +++++----------------
 ustream-openssl.c                           | 14 +++---
 ustream-openssl.h                           |  4 ++
 ustream-ssl.c                               |  3 ++
 6 files changed, 43 insertions(+), 53 deletions(-)
 rename ustream-io-cyassl.c => ustream-io-wolfssl.c (62%)


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
