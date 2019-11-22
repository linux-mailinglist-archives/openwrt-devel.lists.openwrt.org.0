Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B68C7107204
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 Nov 2019 13:14:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:Date:To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OlrxmdeEDm+cjTI3vnUpVV/axwdvEx9FQVk0cI2wCg0=; b=N5W
	Alikv4aDSWGKwAheAy543XRJjBOJObO9oQ1X0o5zzuNl39tMAkzedFDIGLeYAvZT220Cbi4xXjCKG
	FiqBvTwTZRNLqkA92fDb/u9oClDeYfcUYmXhusVEw8GxopzUaBqG7HExEKg5LdCoVP2CHX1h+O0yI
	eYeUaQixwd3kHp3x1Xb0BwjYs8nEEb1MAMizsdJqJAMak2/ZLw5wTKboqzRfQWBUDa4pkGKF4QY1p
	3AkEAyE9u8v6uP5CWV/z9JRvuBKS/fbsEk0miDczCqHx+sIfY+IpuzBi9zHFdihpyz8jb6rk6IX95
	Uoct+a4cDzv3y1owRw9IMSFEv1kSA3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY7pD-00026Q-Hr; Fri, 22 Nov 2019 12:14:11 +0000
To: openwrt-devel@lists.openwrt.org
Date: Fri, 22 Nov 2019 12:12:46 +0000
MIME-Version: 1.0
Message-ID: <mailman.13433.1574424844.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Kyle Copperfield via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Kyle Copperfield <kmcopper@danwin1210.me>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] [PATCH RESEND packages 1/2] openssh: add openwrt
 failsafe support
Content-Type: multipart/mixed; boundary="===============8053400720857068784=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8053400720857068784==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============8053400720857068784==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from danwin1210.me ([2a01:4f8:c010:d56::1])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY7p4-00025l-4N
	for openwrt-devel@lists.openwrt.org; Fri, 22 Nov 2019 12:14:03 +0000
Received: from localhost (unknown [10.8.3.3])
	by danwin1210.me (Postfix) with ESMTPA id 4F7CB1F40E
	for <openwrt-devel@lists.openwrt.org>; Fri, 22 Nov 2019 12:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=danwin1210.me;
	s=mail; t=1574424828;
	bh=LolxzHelnPAxmFHWcvzDNx/wTJqNu7jhPKy2VpE2fnE=;
	h=From:To:Subject:Date:From;
	b=cuRqyfzc3zZ7tXRR9J6ld/fHaWBEI5oRRBrgWXu30AvqAhyOEsxkYYw5gLiy7Tm95
	 sULV6WckDZ0GvZtnMmTkkLrT/7IfprW0ZxXND6a/cF3sAgUNoamPQ8JIWr6mw/ApP8
	 KcJDRpAZWoUy6DDjmUgh2Oah8KjJrTjBWvyph+rCL6P50uGygS49rimUNyOVdL2XGj
	 AgQYji4+KaFQ5elCKXr/vq1q+pah9ADEE8CSb7pyJJjKLVtqUurkKhw6HQ/Th4is2C
	 H80W976wLd420BLkj9dr2K3VoSkYzoHgGx9jwlj3rYnO/nIyCwjR1bCi1yqAdLeT0L
	 nElDVT+1K37jTbgVCum0jwBbJqxWfAyQDG8VrZGE5GulONibp5jRueib4A6Pc38Cni
	 noO+TZ4qx4F0o6UnypIOKUPTSiDTzUFMOBjADQxfjAre5fUQeRDOKp+pEHy2GyC9BU
	 WrjswJqqbaeN5SMPEfDQMKDsZ0G78hPdol+KLaXlz9pmTvpNM3hRJF2BJdstteVOoj
	 crcWXmBFHhunntNELUKomN/0NuaeL1xU39khCsTILEII3MY6dUz/HQuELOsNkLN+NR
	 WcBI+trGDpZLmLlAW3jn7nsOhXR6UmscCnla9FtJmIeVUYzpj/RFFresT7DejSAJ9d
	 AGgRBtLecesiyIi8EWBJWHj0=
Received: from danwin1210.me (localhost [127.0.0.1])
	by localhost (Postfix) with ESMTP id 17E8A104892
	for <openwrt-devel@lists.openwrt.org>; Fri, 22 Nov 2019 12:13:48 +0000 (UTC)
From: Kyle Copperfield <kmcopper@danwin1210.me>
X-OPENPGPKEY: Message passed unmodified
To: openwrt-devel@lists.openwrt.org
Subject: [PATCH RESEND packages 1/2] openssh: add openwrt failsafe support
Date: Fri, 22 Nov 2019 12:12:46 +0000
Message-Id: <20191122121247.58881-1-kmcopper@danwin1210.me>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.101.4 at proxy
X-Virus-Status: Clean
X-Spam-Status: No, score=0.0 required=2.0 tests=none autolearn=ham
	autolearn_force=no version=3.4.3-rc6
X-Spam-Checker-Version: SpamAssassin 3.4.3-rc6 (2019-11-09) on proxy
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_041402_491547_655D5150 
X-CRM114-Status: UNSURE (   7.43  )
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
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
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



--===============8053400720857068784==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8053400720857068784==--
