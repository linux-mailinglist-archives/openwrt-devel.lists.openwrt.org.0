Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1606C1F36A4
	for <lists+openwrt-devel@lfdr.de>; Tue,  9 Jun 2020 11:12:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bXfcwpJqi3bH2vjDcTXFy8HGo+GIy4oTw2FuxzTOBDI=; b=Q3v6AMWcQ4WWdc
	DREuD7+1GprgqhsjochvfCW9LiS+WiARlTrHshfGERRwPMS2MvrFumr2i6hc062cdKgfb6oAKIDXq
	Jnypgs584Jygzqd0sUKplq6R6G4OMh0W1FEigf4eHN/TbwDU0INETu+BrDL4AFS4RF0NqcPHkcUCV
	YVblh4wdmmMUqMn/mS42VFF7E/9J7oVDoQlcxlgPANco12avsWQ0cXOUuRZe52Ikj/WALnKYZXahl
	JytP6Xl2KPs3/0wAhwJihpd9ndaW6FsO/oTTzPYGiOQ9HMCKiN0UY31+zilE4M82VBSn8OVJaT3hE
	/ptIUHh5ijaJ58wj4NRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiaI3-0006Xj-40; Tue, 09 Jun 2020 09:11:27 +0000
Received: from vds2011x11.startdedicated.de ([62.138.18.229]
 helo=mail.softart-ge.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiaHz-0006Ma-Fs
 for openwrt-devel@lists.openwrt.org; Tue, 09 Jun 2020 09:11:24 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.softart-ge.com (Postfix) with ESMTP id 81217C060F
 for <openwrt-devel@lists.openwrt.org>; Tue,  9 Jun 2020 11:11:12 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at softart-ge.com
Received: from mail.softart-ge.com ([127.0.0.1])
 by localhost (softart-ge.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oin3MUsdbyO8 for <openwrt-devel@lists.openwrt.org>;
 Tue,  9 Jun 2020 11:11:09 +0200 (CEST)
Received: from [192.168.1.221] (ip-84-119-114-184.unity-media.net
 [84.119.114.184])
 by mail.softart-ge.com (Postfix) with ESMTPA id 50A0FC0212
 for <openwrt-devel@lists.openwrt.org>; Tue,  9 Jun 2020 11:11:09 +0200 (CEST)
To: openwrt-devel@lists.openwrt.org
From: Reiner Karlsberg <karlsberg@softart-ge.com>
Message-ID: <fd9e3be6-f614-92b3-e9b2-55a366e8e665@softart-ge.com>
Date: Tue, 9 Jun 2020 11:11:06 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_021123_677538_5E811F61 
X-CRM114-Status: UNSURE (   3.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] Build error on latest trunk: meson, python, zstd
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

C++ compiler for the host machine: mipsel-openwrt-linux-musl-g++ (gcc 8.4.0 "mipsel-openwrt-linux-musl-g++ (OpenWrt GCC 
8.4.0 r13520-68b94f0fb4) 8.4.0")
C++ linker for the host machine: mipsel-openwrt-linux-musl-g++ ld.bfd 2.31.1
Build machine cpu family: x86_64
Build machine cpu: x86_64
Host machine cpu family: mipsel
Host machine cpu: mt7620
Target machine cpu family: mipsel
Target machine cpu: mt7620
Program python3 found: YES (/etc/openwrt/WE826/staging_dir/host/bin/python)
Could not introspect Python (['/etc/openwrt/WE826/staging_dir/host/bin/python', '-c', "import sysconfig\nimport 
json\nimport sys\n\ninstall_paths = sysconfig.get_paths(scheme='posix_prefix', vars={'base': '', 'platbase': '', 
'installed_base': ''})\n\ndef links_against_libpython():\n    from distutils.core import Distribution, Extension\n 
cmd = Distribution().get_command_obj('build_ext')\n    cmd.ensure_finalized()\n    return 
bool(cmd.get_libraries(Extension('dummy', [])))\n\nprint (json.dumps ({\n  'variables': sysconfig.get_config_vars(),\n 
'paths': sysconfig.get_paths(),\n  'install_paths': install_paths,\n  'version': sysconfig.get_python_version(),\n 
'platform': sysconfig.get_platform(),\n  'is_pypy': '__pypy__' in sys.builtin_module_names,\n  'link_libpython': 
links_against_libpython(),\n}))\n"]): exit code 1
Program stdout:


Program stderr:

Traceback (most recent call last):
   File "<string>", line 20, in <module>
   File "<string>", line 8, in links_against_libpython
ModuleNotFoundError: No module named 'distutils.core'


../../../../build_dir/target-mipsel_24kc_musl/zstd-1.4.5/build/meson/meson.build:25:0: ERROR: <ExternalProgram 'python3' 
-> ['/etc/openwrt/WE826/staging_dir/host/bin/python']> is not a valid python or it is missing setuptools

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
