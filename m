Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A79E9201
	for <lists+openwrt-devel@lfdr.de>; Tue, 29 Oct 2019 22:24:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XlqElM+z82QZWL0GVK4pFCe1ykczD7n4RdKNc9gCdiw=; b=d4ftC09xzmDukp
	UcH+dOkMdSuGt+OrV16nrDsnw3yIscfkxapMuFqJhn1KhNzeaxL48/qHh93FZVDbeg16b7iN24/YC
	1CUE5MUwP0lUg6f9c6PyG4FghesLQ6K5awXq4gKaPJHxFJNguDCgUEfzrTVrpv4U/SCG8bCzTGvts
	I35ydunlunB/ABBffrdgFZMc7SRKQ7Ql1mibRNhokwURZ1sbX1oI67HS5k3mIY6H7kJ8g01hVzqiW
	FW92OTObzpmXfahR+I45JS8fpmLGyQ7n3qAUCTLhxrf2/WfgfwUUFiBNxTv73+erjCjRciJFiNaxo
	1EsmurWMLeo51ZDFXx0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPYyk-0006sB-7q; Tue, 29 Oct 2019 21:24:38 +0000
Received: from mail-qt1-x834.google.com ([2607:f8b0:4864:20::834])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPYya-0006qG-Ra
 for openwrt-devel@lists.openwrt.org; Tue, 29 Oct 2019 21:24:30 +0000
Received: by mail-qt1-x834.google.com with SMTP id o3so217702qtj.8
 for <openwrt-devel@lists.openwrt.org>; Tue, 29 Oct 2019 14:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8yRzk6jX2RbVAinClFxdlLMvjSJ3lt1hrucaQgCQNX0=;
 b=mo8RFD6uyEascs0OfZB24VcMsWuteOIIpypOfVnjnfYy1hV2KOTEUxuunjDq+9D1lO
 81HBT3m41BOJMcYkFeKvyYi2kEXgSWyCLIQN1vcS7p1QNqEhXduXalHkJB/arEsHs8mH
 Ja2+5i5AlEZ23ryTcGhihUegAoBtULZCG9km8ZMSWB5vdGExzKIZDlJjN4NEXlbfRHPE
 imlsRyvSZB6YSwRivpqrcrVRdojSDf+QG42RHhKQkAHFM2moPKcXJuhGx9zHNFISu7g+
 jKP5z3uRlqyE17cmUJTqbI0k0xADR/mEAzFuVl2UfRKWup6q7YXr/SPtvx+JHJDTMhm9
 Hd8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8yRzk6jX2RbVAinClFxdlLMvjSJ3lt1hrucaQgCQNX0=;
 b=bpH4BtyfrFvqYT4lTm4djUqVbwcKzvJfp5GiBged18+mME2lAYVe37hwVcNjOM1dxz
 5HOlPV598SqFDSa4fMqb2/dLQ0MJlt7fmnrCUagYDMuVjKEMVujU5r3TEcOfEe4bwV3U
 I9Mt9zR9xWWzWibWgY5ZVqenq1SosjJvPBDcWoy1lHaqjcu80ccjp80qU7CEJ/8II8bx
 MNcEQSJ0lN6M8WPU8C0Y8820Su/s+z3gv+eDtMR7t73tCB9vDSemvNusz5nRuL1BIC10
 iToCnbuUVPo2VypCaeu0iA/jXYnxAOWZSg2VfU43NL+lualzmiYv7Ce2ftG8DZQ+D/Lq
 YeDQ==
X-Gm-Message-State: APjAAAUtD2T8JMKYE2j/3m41+DMS0S6sPN4quQBHTQ7x24sdWSSar7W3
 ReQefchJfUYoxEyEAKUcgDYjeN5J
X-Google-Smtp-Source: APXvYqz5ZuI5ROtHg1MU0f1gA3FEZkgeqVAnrr9Uvwko+c8gYGsPqTsCpixfE0le8aEJK4CCOC1Ubw==
X-Received: by 2002:ac8:701e:: with SMTP id x30mr1352213qtm.203.1572384266802; 
 Tue, 29 Oct 2019 14:24:26 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id x12sm115901qkh.96.2019.10.29.14.24.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 14:24:25 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 29 Oct 2019 18:24:16 -0300
Message-Id: <20191029212416.23416-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_142428_913855_222ABC74 
X-CRM114-Status: UNSURE (   5.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:834 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH ustream-ssl] wolfssl: adjust to new API in
 v4.2.0
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

WolfSSL has recently added many openssl 1.1+ calls, including
TLS_server_method & TLS_client_method, which were being redefined,
causing compilation failure:
ustream-openssl.c:113:0: error: "TLS_server_method" redefined [-Werror]
ustream-openssl.c:114:0: error: "TLS_client_method" redefined [-Werror]

Only define the symbols if not previously defined.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
--
There are two CVEs with critical(CVSS 3.1)/high(CVSS2.0) base scores
that have been fixed in wolfssl 4.2.0: CVE-2019-16748 & CVE-2019-15651.

Before we can update wolfssl, this needs to be applied, along with
https://patchwork.ozlabs.org/patch/1164316/.  It's also possible to come
up with a shorter patch than 1164316, doing just what's necessary for
compilation.  Let me know how I should go ahead with this.

Here's the error after this, but without 1164316 applied:
/ustream-openssl.h:47:2: error: implicit declaration of function
'SSL_set_tlsext_host_name'; did you mean 'SSL_set_tlsext_debug_arg'?
[-Werror=implicit-function-declaration]
  SSL_set_tlsext_host_name(us->ssl, us->server_name);

It's been tested on WRT3200ACM with master, using current wolfssl 4.1.0,
and also with 4.2.0 + https://patchwork.ozlabs.org/patch/1164316/
running uhttpd.

diff --git a/ustream-openssl.c b/ustream-openssl.c
index b2df362..c09106f 100644
--- a/ustream-openssl.c
+++ b/ustream-openssl.c
@@ -110,8 +110,12 @@ __ustream_ssl_context_new(bool server)
 		SSL_library_init();
 		_init = true;
 	}
-# define TLS_server_method SSLv23_server_method
-# define TLS_client_method SSLv23_client_method
+# ifndef TLS_server_method
+#  define TLS_server_method SSLv23_server_method
+# endif
+# ifndef TLS_client_method
+#  define TLS_client_method SSLv23_client_method
+# endif
 #endif
 
 	if (server) {

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
