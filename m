Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC52412D5BB
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 03:18:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0hu0kzxVSipWq6YLG/3NtaxNNFeWVv41knwmEaxnWZQ=; b=qp0t6deoViTIlf
	lY5DDNFrZZu+08e9G/t31b0Yktafe8UKR+t/V2tB40QVYm54yvybkdFue6dT8ZkpYHENsaQvLqQ95
	9u2VpyEXESKfg0glQ7v85duWc1LkvCdZVy9/Q34DZJ/Tdq8VUhOT0N+kFbc+SlISW+eJ43zGoElsZ
	p3ig4Yq/B+tQXNc9RfOGga0Nk4T/KLRj70URxR4MRuLhtxf7JR8JboqIT4LOI6mC1BrHRCsR+s95+
	iF3uhjSecYoqzOBzwT3RLkRUVrHTSwtDXILMaYGSXstcDfEFjFDL7nKxQTeX+qnLmKH5f4rkgFIru
	HqlbTuSdcEidwARn+6iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im76v-0003mg-B5; Tue, 31 Dec 2019 02:18:17 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im76n-0003m4-LW
 for openwrt-devel@lists.openwrt.org; Tue, 31 Dec 2019 02:18:10 +0000
Received: by mail-pj1-x102d.google.com with SMTP id s94so448793pjc.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 30 Dec 2019 18:18:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4IwB4wr1rg8jmNdeib7Dxp8q4/Z5/TdW2LQUxd+jmo0=;
 b=XftRVnm1psXHUEusCBXVuLLtNWyjir0lIXdW6NjCqmcZ3FbYpx5BufHw6FwG+8eifA
 3m4GkHiupIOLvdzHXZUtO5kpzHKcwve7+tYICF3aVa5W6esieTLh5LV5K9gxeFGFrwCf
 zx+cA815AdF2IXmee8XmwKcxVJkg5x8c0xlLt9IG5NWaLhaQvD+nkbrgCbDbC3qeqAFU
 WWkwYht+UCJ2/WTzse0KU8VkUEC6J4bGySgWzyaW0KDWkx32VQOgwxHxf9i1J5j9zEyi
 blKzsQBdoefZ7oG+/fYFaEhGNJ045xZ2X4q+FaQ/v5slyNRVTJ0GeKnkYs2bE+tS/6fr
 clYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4IwB4wr1rg8jmNdeib7Dxp8q4/Z5/TdW2LQUxd+jmo0=;
 b=kNiQyReK277oyV7XJbSpfK9wSYLK6cNqQcS1/1HPOLXE9l0KSLyDzd59Fk8pItrXPz
 7dCvsqkblNXYQ26FyBXSsoMENrDAdLl+Pc05vUmUlRysB+xiMd2j2/srtUE1Ad30kAZs
 /nVtjBfXUvxLQKdgjVwTXUiBE7yGieOlMD0MccS6pSaXcWwunpu8xR/ShhW0gxlM1q+O
 zanrAmdmDV3T9sM+LRbeATS2IovuuuAXuv5oDiJ1WdhWOilJnj2Dbt9TM/UVCKnEffRz
 Ft9EWhc9unytSG3kuJNm92NSeT0M0KkOJxevfEylgI0cg8wwGxMOvYjv4hEzqtPzCynr
 d7TQ==
X-Gm-Message-State: APjAAAW/12kCo/tpb186JDBxUWHofMLKNH0DLh2LwZI9/GM2FHu7ef2W
 72Yq9MK5furK1og56oniH00ev10zlgI=
X-Google-Smtp-Source: APXvYqwH7XF4mE6gok2fNQDt4XPU1psGeV9WVO4V0fgw24hB50jDRhlepJf6BD8uKr/ucr4YkCoe7A==
X-Received: by 2002:a17:902:9a05:: with SMTP id
 v5mr4530557plp.341.1577758688671; 
 Mon, 30 Dec 2019 18:18:08 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id b20sm34584157pfi.153.2019.12.30.18.18.07
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 18:18:08 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 30 Dec 2019 18:18:03 -0800
Message-Id: <20191231021804.47805-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_181809_709595_C4CDE281 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 1/2] scripts/strip-kmod.sh: Replace legacy
 `` with $()
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

Found with shellcheck.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/strip-kmod.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/strip-kmod.sh b/scripts/strip-kmod.sh
index 313015b909..7886cd907f 100755
--- a/scripts/strip-kmod.sh
+++ b/scripts/strip-kmod.sh
@@ -50,6 +50,6 @@ $3 && $2 ~ /[brtd]/ && $3 !~ /\$LC/ && !def[$3] {
 }
 ' > "$MODULE.tmp1"
 
-${CROSS}objcopy `cat ${MODULE}.tmp1` ${MODULE}.tmp ${MODULE}.out
+${CROSS}objcopy $(cat ${MODULE}.tmp1) ${MODULE}.tmp ${MODULE}.out
 mv "${MODULE}.out" "${MODULE}"
 rm -f "${MODULE}".t*
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
