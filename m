Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8554140315
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 Jan 2020 05:45:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2pqkx0Hyt+VIcHXZwCmnkOsjTCcD6uGCzoPZR80WxyE=; b=I/1feo/mpiWKTX9PlIpoA+Xy+p
	gWNI3PfaBH6R7+v9ZQShYQ175/DA0qgYlcXhb/tevmJ7Z2W4e15isNZY7R1i27lML67Xl3aTQV+HT
	U6uqi/kdKlRtkLoJuRXfgVEJnRURCQ88mYyHenK5rOUb+JEmKEBxvi0htkVOBncUU1PDGtjhunWIs
	x7nefWa06Lb5bQgBXk90exMhX+1PRnrQnxNprShbm4a4gP02tc5rI0ZTVDAf1iIlcmaZqAmyWZFkq
	CM3w7DPqpeTr7QlJssW/eKoGBEnmuIWzu0wLyxW0TlvC+sThp4inGg0JmxPeMNCPsR+YdHFH50SAz
	hDyZ9MdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isJVp-0004XZ-Vj; Fri, 17 Jan 2020 04:45:38 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isJUP-0001uI-CN
 for openwrt-devel@lists.openwrt.org; Fri, 17 Jan 2020 04:44:11 +0000
Received: by mail-pl1-x62d.google.com with SMTP id ay11so9339728plb.0
 for <openwrt-devel@lists.openwrt.org>; Thu, 16 Jan 2020 20:44:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=fNGKMKcc4zYTOWM7QmfkkKrEmE5t/m2FF5qSz8frTKs=;
 b=R2l51hM4uge93vTzJbv7W3V6Mp6Nla0vDozbPy+eupOnK+AG2Oj6F975Ol7Z9DONHf
 xZBaKyLI1xixzS/NQcIyb1ZCuCLvMZ5+/oXyZ36SFFdqcOgGKtfKLAsdbK5Bk5SP7Yn5
 YNKer6zhJxwjext6jtNgEUA6pwcgeEOloBmM+lmC7ciUBRM4Coitf6iWIj3UmpOtEaNb
 2KNxm0ATLgrJFbVns21hAyYvgGpbMue0nEHqdOhVielxXN/XCGCw4ACFu5XM3zyIBfb0
 yUX1iT77w/lel9AdK4KJE1kW6+OrReRO6yXaLv6S+1tJ3t2M63LlRNBARZPRyUgQynZp
 Bp0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fNGKMKcc4zYTOWM7QmfkkKrEmE5t/m2FF5qSz8frTKs=;
 b=ACZHoXj6RLXbCQ7/luczuz8CDDj/jL9SYTbAXsO7WPocQjb8MMyJsqWKlRomXWcGDt
 etfoH+SHAbpBglM+JyqtuUPv9SDWBWYaVkMFQNt+HhIzFA3Ihr/6KE3Xv18aMJlFGrgA
 JrHhyqq3HFCrAv/9g2iwnlKbxPN7ATx+NMuTbSBF4AhRKabc94zyjnijy4g3RZCVeObj
 JdpNCmPZnEnSC0fi6uUAms2ylDuJWoKxugzby+9PSjB9sHd/4Qw9jbBP5d7IwkqQPtlk
 IaLFpwMw/P36kAfW6FK7DYQfFodyfJszzOjfPFHdmIS8T6JZC5qUObhmJsbPMMXKwr4A
 rxBg==
X-Gm-Message-State: APjAAAWlNUb8UYFUZb2B06qsvNXVJ0FGiyte7nAFhJPRBZhKHh7+am1v
 0faByrdKgnB8+wa5nTwN5tzweVUZ
X-Google-Smtp-Source: APXvYqxssmf95N/IWhSedb0LDRfE/yTZPh/e/6aM1zGK1n65xjRF+WEzOp7hK10/uTf7TRXx8qM7jQ==
X-Received: by 2002:a17:90a:c588:: with SMTP id
 l8mr3359895pjt.69.1579236248379; 
 Thu, 16 Jan 2020 20:44:08 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id c184sm26790055pfa.39.2020.01.16.20.44.07
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 20:44:07 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 16 Jan 2020 20:43:59 -0800
Message-Id: <20200117044359.1923979-7-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200117044359.1923979-1-rosenp@gmail.com>
References: <20200117044359.1923979-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_204409_444011_18E90598 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 7/7] base-files/system.sh: remove $ in $(())
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

Not needed.

https://github.com/koalaman/shellcheck/wiki/Sc2004

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/base-files/files/lib/functions/system.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/package/base-files/files/lib/functions/system.sh b/package/base-files/files/lib/functions/system.sh
index c4dc3cc3a9..c9f8eb0c31 100644
--- a/package/base-files/files/lib/functions/system.sh
+++ b/package/base-files/files/lib/functions/system.sh
@@ -140,7 +140,7 @@ macaddr_add() {
 	local oui=${mac%:*:*:*}
 	local nic=${mac#*:*:*:}
 
-	nic=$(printf "%06x" $((0x${nic//:/} + $val & 0xffffff)) | sed 's/^\(.\{2\}\)\(.\{2\}\)\(.\{2\}\)/\1:\2:\3/')
+	nic=$(printf "%06x" $((0x${nic//:/} + val & 0xffffff)) | sed 's/^\(.\{2\}\)\(.\{2\}\)\(.\{2\}\)/\1:\2:\3/')
 	echo $oui:$nic
 }
 
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
