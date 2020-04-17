Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E188B1AD864
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 Apr 2020 10:16:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M+ma19NJghqeUJP8UZx6TjiLT4EoFdMp54elZHMN/2E=; b=XhkqZWHDCmyNsw
	+tir7Qs83eCgUajx1rrgblerdzC+6FCD7WE2wUUrB5f+vIdSl9rJUoS39I+zPkdkWeFsWEwW4UCg1
	z2b51JnWGvex0WCjcyVGbx6+5vFZG4JrK34tGO1BRMw9Izf7pQlf5AoAeKN2tgicJphxxwfiuVuqL
	VxXvV/s4FC5cOt52pS8AW+gJmAtDKmlfHKZv9QjK6YgXEwP0E8UgkCqVjNH0RsGIvt5UWBMHuEYOZ
	IoGUeKdLMH2+XGt74YCZXDjpq3NoOwv8A3oBB84PSXk+7xHSR0XIZsUY8ZEJ/eMJDerSDoecqlKPl
	wkW3XVTg69PFymrzn2+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPMAz-0008Qt-Tb; Fri, 17 Apr 2020 08:16:42 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPMAt-0008P0-IW
 for openwrt-devel@lists.openwrt.org; Fri, 17 Apr 2020 08:16:36 +0000
Received: by mail-wr1-x430.google.com with SMTP id a25so2044505wrd.0
 for <openwrt-devel@lists.openwrt.org>; Fri, 17 Apr 2020 01:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=QBrQFQCGSv84u7Jl0s+ovjbVaPJlkz6E57Hn6xhPMJ4=;
 b=tOCh6R6Nv4T38UzVSFz5rksI4Jyn7Sr7wDjX77uNi84XtlLoa9HhNkivYxf4zESPg3
 H5inlxOVcxVkqxk14VtIOBCVC7jLvcsD7Ldi0zVODhyta0nb2RjGqkFEa+EGiOcc3Jfe
 WE5Tcl8QC3tkCZFJrSSx01vyc1hLV0ME4AKuUU1XP9XX4H2Lm+WFRvtsGNy+Gb1M1We8
 xBHwHTvZ945khiATyequOYhcbbvNQHkdHadEtyV6dJE/6i0r4mpEMb5qfSK/R8nIE7U1
 80bmiO4/u9IpCbxeoc67+S9HqsSnl+Mz/nGW6YgUBCL/z/QU3aG/VQCwftuehCC6JExT
 PjSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=QBrQFQCGSv84u7Jl0s+ovjbVaPJlkz6E57Hn6xhPMJ4=;
 b=DlUkaBG0isUo8zpT7Ub/9uJoXGAZahtiVxUR50tMECiQSIx8IZWFCS9UyIglOeSZa3
 gzXr7Ry06Gmx28CpSAnMezxafNn6d41D2jyE4lCGFQLUrUF2SbTLT3Sgu2pji9MNxPhO
 uxPPC4FM5W0LtYR+GfRzersGbfA/16SQSiX9k6WjgR9xvECKOT9G4AMJBpzzUFlQG/+o
 WRo+MNJzcL/V0A2Yp0QcA8FiD4vXHl8FhNnPC3nM1+cZdKhOPY2w+BE6Bd13yQO8lJIm
 wJlftiMSYhc1Z1A31pXk5JJ0zMzhv272sIEZ5RNQu6sQ5XhHh4F1PYaCysCgkUhSnxZ5
 d35A==
X-Gm-Message-State: AGi0PuaY/RF/lz5LmOAt4ikgw8R3EXniJyLj+IGu+AzmheORHXXg5mGF
 uU802ifdHUxnGAYdGkNkGLJmnlSo
X-Google-Smtp-Source: APiQypJiJCZlSg8DxYHqTwrGbBA343U/ebjdAKwzeZTPdLN7YcwTcTGypiccDJkilcUkAoQqOo29RQ==
X-Received: by 2002:adf:a3d5:: with SMTP id m21mr2645995wrb.54.1587111392390; 
 Fri, 17 Apr 2020 01:16:32 -0700 (PDT)
Received: from localhost
 (p200300F6671316AC7D8E7082CE075914.dip0.t-ipconnect.de.
 [2003:f6:6713:16ac:7d8e:7082:ce07:5914])
 by smtp.gmail.com with ESMTPSA id s8sm796680wru.38.2020.04.17.01.16.31
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 17 Apr 2020 01:16:31 -0700 (PDT)
From: e9hack <e9hack@gmail.com>
To: openwrt-devel@lists.openwrt.org
Message-ID: <22123491-a7af-9ece-5340-a522580c67e0@gmail.com>
Date: Fri, 17 Apr 2020 10:16:30 +0200
User-Agent: Thunderbird
MIME-Version: 1.0
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_011635_633796_7EBC4B62 
X-CRM114-Status: UNSURE (   6.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:430 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [e9hack[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Possible security issue
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

the configuration files for hostapd (/var/run/hostapd-phyX.conf) are readable for everyone. This means everyone can read the wifi passwords. If a non privileged user calls 'uci show wireless', he will also get all wifi passwords. This possible e.g. for user nobody and dnsmasq.

Is this a a security issue?

Regards,
Hartmut

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
