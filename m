Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9AEF73A9
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 Nov 2019 13:15:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:Date:To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=eLPh70Gbq7lhPMVu2EtlJG6Ld4Fox8ahTdOCzbK3SFM=; b=IcrXWLPrK3aOcvE539NNqa8KQi
	tBuUWKPg/wXfxazXstn/NBA4qn+RLkDbugXabFW/smaetOqR7ED62uapQ4XE/vg1jWIN8gpRQs+A+
	YEXbHFGkN9sq2wh58AEUnoTJSK3/HjjrNjdmFNHj1LeRlDoz6OxzLGY0QvjzNgua4yApK6qDcAkBv
	D3yDvj4NwKiTq7jeKppofWr48N4F+N3qR04RXtGSm9krhneeG84wKlSYSNvdWRH6EARGqi5etBFLc
	d6DOUqeGGk+Q/46lma7FYrNotMRdgDoH6vj0D6FVoPvSC+MKyEUSa/IFFmz/uPs+i7jqiiqDjpvGw
	aCTZjtaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU8aj-0003kX-36; Mon, 11 Nov 2019 12:14:45 +0000
To: openwrt-devel@lists.openwrt.org
Date: Mon, 11 Nov 2019 12:13:05 +0000
MIME-Version: 1.0
Message-ID: <mailman.10281.1573474454.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Kyle Copperfield via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: Kyle Copperfield <kmcopper@danwin1210.me>,
 Jeff Kletsky <git-commits@allycomm.com>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Kyle Copperfield <kmcopper@danwin1210.me>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] [PATCH 1/2] openssh: add openwrt failsafe support
Content-Type: multipart/mixed; boundary="===============7895320925583143583=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7895320925583143583==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============7895320925583143583==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from danwin1210.me ([2a01:4f8:c010:d56::1])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU8a9-0003Qo-OI
	for openwrt-devel@lists.openwrt.org; Mon, 11 Nov 2019 12:14:12 +0000
Received: from localhost (unknown [10.8.3.3])
	by danwin1210.me (Postfix) with ESMTPA id 03D301F41E;
	Mon, 11 Nov 2019 12:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=danwin1210.me;
	s=mail; t=1573474440;
	bh=LolxzHelnPAxmFHWcvzDNx/wTJqNu7jhPKy2VpE2fnE=;
	h=From:To:Cc:Subject:Date:From;
	b=dfzORkr2Fc2YweLjLYqzqzJXACw6bgrECL6zGOUaPfgiVrKn4oXfLXtOH8v9m2Ra3
	 Sod4hSoXJxDTRlmcW25Ha22BK5A0y2Zp1m4i4VxXBXhcyeYYNLp2SgJkQGNXogN6TB
	 2t+EC0iVuzMOSpfJYTOphFLY8weCq6YofYt4il6o94NCD9IKseNlpTS/91ePl2B/YL
	 IrPZFSZgZqMYjPuMtaYee5jC9eLxBdyxgDMIzkt1ayE9nq39mM6F/76d62X9vT3cZ/
	 YAkVmryLynfR0zK6FYfe4Z4UQDRfPJyVlbmcirUFzmtfaTLmv3GqcsLWReknyroqe6
	 k47LO9tgEPhhzGCLKuzeYJ3F2/ASCFaO9/jxPEu7l9Y3mwC0fjyR/lBw4ICK8M8E+o
	 hY4+4KN9rWWbaHH3jQTR7MXslzmSRGl2GEzHretaBXRzlMQ1Y8nuIKXUA/UJJZXz2D
	 vS7KlOaR8GgBzKIP8Qr/1rC+GnATs5XvohLxo4LwPpk+kxgsE5ytZ4uiZ2yIsS7doF
	 HXlX3IjbG3zn3+xrnLF1ba0/iJ+Qc0Nws8WagkkFBNhQSYVYOXMd/w9WrXLzl5sQmD
	 8frDjsqnqOxih7mCLaViQeWrojb3uNIhfXcT5K6I1XWO+hTEktCFIA+7FWAmQFNgNS
	 fSrVx5am3c1XcW4xMCDibIkc=
Received: from danwin1210.me (localhost [127.0.0.1])
	by localhost (Postfix) with ESMTP id C3812103622;
	Mon, 11 Nov 2019 12:13:59 +0000 (UTC)
From: Kyle Copperfield <kmcopper@danwin1210.me>
X-OPENPGPKEY: Message passed unmodified
To: openwrt-devel@lists.openwrt.org
Cc: Kyle Copperfield <kmcopper@danwin1210.me>,
	Jeff Kletsky <git-commits@allycomm.com>
Subject: [OpenWrt-Devel] [PATCH 1/2] openssh: add openwrt failsafe support
Date: Mon, 11 Nov 2019 12:13:05 +0000
Message-Id: <20191111121306.28350-1-kmcopper@danwin1210.me>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.101.4 at proxy
X-Virus-Status: Clean
X-Spam-Status: No, score=0.0 required=2.0 tests=none autolearn=ham
	autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on proxy
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_041410_139216_2CE73DA7 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [2a01:4f8:c010:d56:0:0:0:1 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain

Adds failsafe support to the openssh package.
Roughly based on an earlier patch.

Ref: https://github.com/openwrt/openwrt/pull/865
Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
Signed-off-by: Kyle Copperfield <kmcopper@danwin1210.me>
---
 net/openssh/Makefile            |  1 +
 net/openssh/files/sshd.failsafe | 31 +++++++++++++++++++++++++++++++
 2 files changed, 32 insertions(+)
 create mode 100755 net/openssh/files/sshd.failsafe

diff --git a/net/openssh/Makefile b/net/openssh/Makefile
index 97b7fc304..3273180af 100644
--- a/net/openssh/Makefile
+++ b/net/openssh/Makefile
@@ -231,6 +231,7 @@ define Package/openssh-server/install
 	sed -r -i 's,^#(HostKey /etc/ssh/ssh_host_(rsa|ecdsa|ed25519)_key)$$$$,\1,' $(1)/etc/ssh/sshd_config
 	$(INSTALL_DIR) $(1)/etc/init.d
 	$(INSTALL_BIN) ./files/sshd.init $(1)/etc/init.d/sshd
+	$(INSTALL_BIN) ./files/sshd.failsafe $(1)/lib/preinit/99_10_failsafe_sshd
 	$(INSTALL_DIR) $(1)/usr/sbin
 	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/sbin/sshd $(1)/usr/sbin/
 endef
diff --git a/net/openssh/files/sshd.failsafe b/net/openssh/files/sshd.failsafe
new file mode 100755
index 000000000..aee7e7743
--- /dev/null
+++ b/net/openssh/files/sshd.failsafe
@@ -0,0 +1,31 @@
+#!/bin/sh
+
+failsafe_sshd () {
+
+	sshd_tmpdir=/tmp/sshd
+	mkdir ${sshd_tmpdir}
+
+	sed -i 's/^root.*/root::0:17000:::::/g' /etc/shadow
+
+	for type in ecdsa ed25519; do
+		key=${sshd_tmpdir}/ssh_host_${type}_key
+		ssh-keygen -N '' -t ${type} -f ${key}
+	done
+
+	mkdir -m 0700 -p /var/empty
+
+	cat > ${sshd_tmpdir}/sshd_config <<EOF
+
+HostKey ${sshd_tmpdir}/ssh_host_ecdsa_key
+HostKey ${sshd_tmpdir}/ssh_host_ed25519_key
+
+PermitRootLogin	yes
+PermitEmptyPasswords yes
+
+EOF
+
+	/usr/sbin/sshd -f ${sshd_tmpdir}/sshd_config -E ${sshd_tmpdir}/sshd.log
+
+}
+
+boot_hook_add failsafe failsafe_sshd
-- 
2.24.0



--===============7895320925583143583==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7895320925583143583==--
